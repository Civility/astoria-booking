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

<div class="card">
	<div class="card-img">
		 <?php if ($params->get('backgroundimage')) : ?>
		 <img src="<?=$params->get('backgroundimage'); ?>" alt="imgbg">
		 <?php endif; ?> 
	</div>
	<div class="card-img-overlay">
		<div class="container">
			<div class="card row">
				<div class="card-text">
					<?=$module->content; ?>
				</div>
			</div>
		</div>
	</div>
</div>
