<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_news
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
$images = json_decode($item->images);
defined('_JEXEC') or die;
?>

<?php if ($params->get('img_intro_full') !== 'none' && !empty($item->imageSrc)) : ?>	
	<div class="flash-image item-image">
		<a href="<?=$item->link; ?>">
			<picture>
				<source srcset="<?=$item->imageSrc;?>" media="(max-width: 720px)">
				<img src="<?=$images->image_intro;?>" alt="<?=$item->imageAlt;?>" itemprop="photo">
			</picture>
			<?php /*if (!empty($item->imageCaption)) : ?>
				<figcaption><?=$item->imageCaption; ?></figcaption>
			<?php endif; */?>
		</a>
	</div>
<?php endif; ?>

<div class="card-body" itemprop="description">
	<?php if (!$params->get('intro_only')) : ?>
		<?=$item->afterDisplayTitle; ?>
	<?php endif; ?>
	<?=$item->beforeDisplayContent; ?>
	<div class="card-text">
		<?php if ($params->get('show_introtext', 1)) : ?>
			<?=$item->introtext; ?>
		<?php endif; ?>
	</div>
</div>

<?=$item->afterDisplayContent; ?>

<div class="card-footer">
	<?php if ($params->get('item_title')) : ?>
		<?php $item_heading = $params->get('item_heading', 'h2'); ?>
		<<?=$item_heading; ?> class="page-header itemprop="name"">
		<?php if ($item->link !== '' && $params->get('link_titles')) : ?>
			<a href="<?=$item->link; ?>" itemprop="url"><?=$item->title; ?></a>
		<?php else : ?>
			<?=$item->title; ?>
		<?php endif; ?>
		</<?=$item_heading; ?>>
	<?php endif; ?>
	<?php if (isset($item->link) && $item->readmore != 0 && $params->get('readmore')) : ?>
		<?='<a class="readmore" href="' . $item->link . '">' . $item->linkText . '</a>'; ?>
	<?php endif; ?>	
</div>
