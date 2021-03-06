<?php
// namespace components\com_jchat\models\fields;
/**
 *
 * @package JCHAT::components::com_jchat
 * @subpackage models
 * @subpackage fields
 * @author Joomla! Extensions Store
 * @copyright (C) 2014 - Joomla! Extensions Store
 * @license GNU/GPLv2 http://www.gnu.org/licenses/gpl-2.0.html
 */
defined ( '_JEXEC' ) or die ( 'Restricted access' );
jimport ( 'joomla.form.fields.list' );

/**
 * Form Field for ACL access levels
 * 
 * @package JCHAT::components::com_jchat
 * @subpackage models
 * @subpackage fields
 * @since 2.0
 */
class JFormFieldChatAccessLevel extends JFormFieldList {
	/**
	 * The form field type.
	 *
	 * @var string
	 */
	protected $type = 'chataccesslevel';
	
	/**
	 * Method to get the field input markup for a generic list.
	 * Use the multiple attribute to enable multiselect.
	 *
	 * @return string The field input markup.
	 */
	protected function getInput() {
		$attr = '';
		
		// Initialize some field attributes.
		$attr .= ! empty ( $this->class ) ? ' class="' . $this->class . '"' : '';
		$attr .= $this->disabled ? ' disabled' : '';
		$attr .= ! empty ( $this->size ) ? ' size="' . $this->size . '"' : '';
		$attr .= $this->multiple ? ' multiple' : '';
		$attr .= $this->required ? ' required aria-required="true"' : '';
		$attr .= $this->autofocus ? ' autofocus' : '';
		
		// Initialize JavaScript field attributes.
		$attr .= $this->onchange ? ' onchange="' . $this->onchange . '"' : '';
		
		// Get the field options.
		$options = $this->getOptions ();
		
		return JHtml::_ ( 'select.genericlist', $options, $this->name, trim ( $attr ), 'value', 'text', $this->value, $this->id );
	}
	
	/**
	 * Displays a list of the available access view levels
	 *
	 * @return  array  The field option objects.
	 */
	protected function getOptions() {
		$db = JFactory::getDbo();
		$query = $db->getQuery(true)
					->select('a.id AS value, a.title AS text')
					->from('#__viewlevels AS a')
					->group('a.id, a.title, a.ordering')
					->order($db->quoteName('title') . ' ASC');
			
			// Get the options.
		$db->setQuery ( $query );
		$options = $db->loadObjectList ();
		
		// Check for a database error.
		if ($db->getErrorNum ()) {
			return array();
		}
		
		array_unshift ( $options, JHtml::_ ( 'select.option', '0', JText::_ ( 'COM_JCHAT_ALL_ACCESSLEVELS' ) ) );
		
		return $options;
	}
}