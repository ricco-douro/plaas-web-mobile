<?php
/**
 * @package     MPF
 * @subpackage  Synchronizer
 *
 * @copyright   Copyright (C) 2016 Ossolution Team, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */
class MPFSynchronizerCommunitybuilder
{
	public function getData($userId, $mappings)
	{
		$data  = array();
		$db    = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select('*')
			->from('#__comprofiler')
			->where('user_id=' . $userId);
		$db->setQuery($query);
		$profile = $db->loadObject();
		if ($profile)
		{
			foreach ($mappings as $fieldName => $mappingFieldName)
			{
				if ($mappingFieldName && isset($profile->{$mappingFieldName}))
				{
					if (stristr($profile->{$mappingFieldName}, "|*|"))
					{
						$profile->{$mappingFieldName} = explode('|*|', $profile->{$mappingFieldName});
					}
					$data[$fieldName] = $profile->{$mappingFieldName};
				}
			}
		}

		return $data;
	}
}
