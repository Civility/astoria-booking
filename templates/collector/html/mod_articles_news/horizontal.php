<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_news
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
jimport( 'joomla.application.module.helper' );
defined('_JEXEC') or die;
?>

<div class="flash flash-horiz" itemscope itemtype="https://schema.org/Hotel">
	<?php for ($i = 0, $n = count($list); $i < $n; $i ++) : ?>
		<?php $item = $list[$i]; $col = 4;?>
		<?php $rowcount = ((int) $i % (int) $col+1); ?>
		<?php if ($rowcount === 1) : ?>
			<div class="row <?=$params->get('moduleclass_sfx'); ?>">
		<?php endif; ?>
			<div class="item col-12 col-md-<?=$col+2;?> col-lg-<?=$col-1;?>">
				<div class="card column-<?=$rowcount;?>" itemscope itemtype="https://schema.org/HotelRoom">
					<?php require JModuleHelper::getLayoutPath('mod_articles_news', '_item'); ?>
				</div>
			</div>
		<?php if ($rowcount == $col) : ?>
			</div>
			<?php if ($n > 1 && (($i < $n - 1) || $params->get('showLastSeparator'))) : ?>
				<span class="separator"></span>
			<?php endif; ?>				
		<?php endif; ?>			
	<?php endfor; ?>
	
</div>
