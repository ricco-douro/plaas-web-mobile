<?php
/**
 * @package        Joomla
 * @subpackage     Membership Pro
 * @author         Tuan Pham Ngoc
 * @copyright      Copyright (C) 2012 - 2019 Ossolution Team
 * @license        GNU/GPL, see LICENSE.php
 */
defined('_JEXEC') or die;
?>
<fieldset class="form-horizontal">
	<legend><?php echo JText::_('OSM_GDPR_SETTINGS'); ?></legend>
    <div class="control-group">
        <div class="control-label">
			<?php echo OSMembershipHelperHtml::getFieldLabel('show_privacy_policy_checkbox', JText::_('OSM_SHOW_PRIVACY_POLICY_CHECKBOX'), JText::_('OSM_SHOW_PRIVACY_POLICY_CHECKBOX_EXPLAIN')); ?>
        </div>
        <div class="controls">
			<?php echo OSMembershipHelperHtml::getBooleanInput('show_privacy_policy_checkbox', $config->get('show_privacy_policy_checkbox', 0)); ?>
        </div>
    </div>
	<div class="control-group">
		<div class="control-label">
			<?php echo OSMembershipHelperHtml::getFieldLabel('privacy_policy_article_id', JText::_('OSM_PRIVACY_ARTICLE'), JText::_('OSM_PRIVACY_ARTICLE_EXPLAIN')); ?>
		</div>
		<div class="controls">
			<?php echo OSMembershipHelperHtml::getArticleInput($this->config->privacy_policy_article_id, 'privacy_policy_article_id'); ?>
		</div>
	</div>
    <div class="control-group">
        <div class="control-label">
			<?php echo OSMembershipHelperHtml::getFieldLabel('privacy_policy_url', JText::_('OSM_PRIVACY_URL'), JText::_('OSM_PRIVACY_URL_EXPLAIN')); ?>
        </div>
        <div class="controls">
            <input type="text" name="privacy_policy_url" class="input-xxlarge" value="<?php echo $config->privacy_policy_url; ?>" />
        </div>
    </div>
    <div class="control-group">
        <div class="control-label">
			<?php echo OSMembershipHelperHtml::getFieldLabel('show_subscribe_newsletter_checkbox', JText::_('OSM_SHOW_SUBSCRIBE_NEWSLETTER_CHECKBOX'), JText::_('OSM_SHOW_SUBSCRIBE_NEWSLETTER_CHECKBOX_EXPLAIN')); ?>
        </div>
        <div class="controls">
			<?php echo OSMembershipHelperHtml::getBooleanInput('show_subscribe_newsletter_checkbox', $config->get('show_subscribe_newsletter_checkbox', 0)); ?>
        </div>
    </div>
    <div class="control-group" data-showon='<?php echo OSMembershipHelperHtml::renderShowon(array('show_subscribe_newsletter_checkbox' => '1')); ?>'>
        <div class="control-label">
			<?php echo OSMembershipHelperHtml::getFieldLabel('hide_newsletter_checkbox_on_renewal', JText::_('OSM_HIDE_NEWSLETTER_CHECKBOX_ON_RENEWAL'), JText::_('OSM_HIDE_NEWSLETTER_CHECKBOX_ON_RENEWAL_EXPLAIN')); ?>
        </div>
        <div class="controls">
			<?php echo OSMembershipHelperHtml::getBooleanInput('hide_newsletter_checkbox_on_renewal', $config->get('hide_newsletter_checkbox_on_renewal', 0)); ?>
        </div>
    </div>
</fieldset>
