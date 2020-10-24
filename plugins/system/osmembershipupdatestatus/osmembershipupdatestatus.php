<?php
/**
 * @package        Joomla
 * @subpackage     Membership Pro
 * @author         Tuan Pham Ngoc
 * @copyright      Copyright (C) 2012 - 2019 Ossolution Team
 * @license        GNU/GPL, see LICENSE.php
 */

defined('_JEXEC') or die;

if (!file_exists(JPATH_ADMINISTRATOR . '/components/com_osmembership/osmembership.php'))
{
	return;
}

class plgSystemOSMembershipUpdateStatus extends JPlugin
{
	/**
	 * Application object.
	 *
	 * @var    JApplicationCms
	 */
	protected $app;
	/**
	 * Database object
	 *
	 * @var JDatabaseDriver
	 */
	protected $db;

	/**
	 * Update status of subscriptions to expired if today date is greater than expired date
	 *
	 * @return bool
	 */
	public function onAfterRender()
	{

		$lastRun   = (int) $this->params->get('last_run', 0);
		$now       = time();
		$cacheTime = 3600; // The process will be run every 1 hours

		if (($now - $lastRun) < $cacheTime)
		{
			return;
		}

		//Store last run time
		$query = $this->db->getQuery(true);

		$this->params->set('last_run', $now);
		$params = $this->params->toString();

		$query->update('#__extensions')
			->set('params = ' . $this->db->quote($params))
			->where('`element` = "osmembershipupdatestatus"')
			->where('`folder` = "system"');

		try
		{
			// Lock the tables to prevent multiple plugin executions causing a race condition
			$this->db->lockTable('#__extensions');
		}
		catch (Exception $e)
		{
			// If we can't lock the tables it's too risk continuing execution
			return;
		}

		try
		{
			// Update the plugin parameters
			$result = $this->db->setQuery($query)->execute();
			$this->clearCacheGroups(array('com_plugins'), array(0, 1));
		}
		catch (Exception $exc)
		{
			// If we failed to execite
			$this->db->unlockTables();
			$result = false;
		}
		try
		{
			// Unlock the tables after writing
			$this->db->unlockTables();
		}
		catch (Exception $e)
		{
			// If we can't lock the tables assume we have somehow failed
			$result = false;
		}
		// Abort on failure
		if (!$result)
		{
			return;
		}

		// Require library + register autoloader
		require_once JPATH_ADMINISTRATOR . '/components/com_osmembership/loader.php';

		$config = OSMembershipHelper::getConfig();

		$query->clear()
			->select('a.id')
			->from('#__osmembership_subscribers AS a')
			->innerJoin('#__osmembership_plans AS b ON a.plan_id = b.id')
			->where('b.lifetime_membership != 1')
			->where('a.published = 1')
			->order('a.id');

		$gracePeriod = (int) $config->get('grace_period');

		if ($gracePeriod > 0)
		{
			$gracePeriodUnit = $config->get('grace_period_unit', 'd');

			switch ($gracePeriodUnit)
			{
				case 'm':
					$query->where('DATE_ADD(a.to_date, INTERVAL ' . $gracePeriod . ' MINUTE) < UTC_TIMESTAMP()');
					break;
				case 'h':
					$query->where('DATE_ADD(a.to_date, INTERVAL ' . $gracePeriod . ' HOUR) < UTC_TIMESTAMP()');
					break;
				default:
					$query->where('DATE_ADD(a.to_date, INTERVAL ' . $gracePeriod . ' DAY) < UTC_TIMESTAMP()');
					break;
			}
		}
		else
		{
			$query->where('a.to_date < UTC_TIMESTAMP()');
		}

		$this->db->setQuery($query, 0, 100);
		$ids = $this->db->loadColumn();

		if (count($ids))
		{

			//Load Plugin to trigger OnMembershipExpire event
			JPluginHelper::importPlugin('osmembership');

			foreach ($ids as $id)
			{
				$row = JTable::getInstance('Subscriber', 'OSMembershipTable');

				if ($row->load($id))
				{
					$row->published = 2;
					$row->store();

					//Trigger plugins
					$this->app->triggerEvent('onMembershipExpire', array($row));
				}
			}
		}

		return true;
	}

	/**
	 * Clears cache groups. We use it to clear the plugins cache after we update the last run timestamp.
	 *
	 * @param   array $clearGroups  The cache groups to clean
	 * @param   array $cacheClients The cache clients (site, admin) to clean
	 *
	 * @return  void
	 *
	 * @since   2.0.0
	 */
	private function clearCacheGroups(array $clearGroups, array $cacheClients = array(0, 1))
	{
		$conf = JFactory::getConfig();
		foreach ($clearGroups as $group)
		{
			foreach ($cacheClients as $client_id)
			{
				try
				{
					$options = array(
						'defaultgroup' => $group,
						'cachebase'    => ($client_id) ? JPATH_ADMINISTRATOR . '/cache' :
							$conf->get('cache_path', JPATH_SITE . '/cache'),
					);
					$cache   = JCache::getInstance('callback', $options);
					$cache->clean();
				}
				catch (Exception $e)
				{
					// Ignore it
				}
			}
		}
	}
}
