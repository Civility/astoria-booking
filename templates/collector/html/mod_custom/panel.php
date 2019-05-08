<?php defined('_JEXEC') or die; 
$menu = $app->getMenu()->getActive();
$input = JFactory::getApplication()->input;
$menuname = JFactory::getDocument()->title;
$catid    =  $input->get('view');
$id    =  $input->getInt('id');
$menuAlias= $menu->alias;
?>
<?php if ($menuAlias != 'location') : ?>
<div class="jumbotron <?=$catid.'-'.$id ?>">
	<<?=$params->get('header_tag');?> class="<?=$params->get('header_class');?>"><?=$menuname?></<?=$params->get('header_tag');?>>
</div>
<?php else :?>
	<div class="jumbotron">
		<?=$module->content; ?>
		<div id="map"></div>
	</div>	
<?php endif?>