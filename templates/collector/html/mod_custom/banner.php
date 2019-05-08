<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_custom
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<div class="banner card <?=$params->get('moduleclass_sfx');?>">
	<div class="card-body">
		<?php if($module->showtitle == 1):?>
		<<?=$params->get('header_tag');?> class="<?=$params->get('header_class');?>"><?=$module->title;?></<?=$params->get('header_tag');?>>
		<?php endif;?>
		<div class="card-text"><?=$module->content; ?></div>
	</div>
</div>
