<?php

defined('_JEXEC') or die;

$image = $params->get('backgroundimage');

?>

<div<?= $image ? " style=\"background-image:url({$image})\"" : '' ?>><?= $module->content ?></div>
