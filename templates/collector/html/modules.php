<?php
defined('_JEXEC') or die;

function modChrome_default($module, &$params, &$attribs)
{
	$moduleTag      = $params->get('module_tag', 'div');
	$headerTag      = htmlspecialchars($params->get('header_tag', 'h4'), ENT_COMPAT|ENT_SUBSTITUTE, 'UTF-8');
	$bootstrapSize  = (int) $params->get('bootstrap_size', 0);
	$moduleClass    = $bootstrapSize != 0 ? ' col-' . $bootstrapSize : '';

	$headerClass    =  $params->get('header_class');
	$headerClass    = ($headerClass) ? ' class="' . htmlspecialchars($headerClass, ENT_COMPAT|ENT_SUBSTITUTE, 'UTF-8') . '"' : '';

	if (!empty ($module->content)) : ?>
		<?php if ($params->get('moduleclass_sfx')): ?>
			<<?=$moduleTag; ?> class="<?=htmlspecialchars($params->get('moduleclass_sfx'), ENT_COMPAT|ENT_SUBSTITUTE, 'UTF-8') . $moduleClass; ?>">
		<?php else: ?>
			<<?=$moduleTag; ?> class="mod<?=htmlspecialchars($params->get('moduleclass_sfx'), ENT_COMPAT|ENT_SUBSTITUTE, 'UTF-8') . $moduleClass; ?>">
		<?php endif ?>
			<?php if ((bool) $module->showtitle) : ?>
				<<?=$headerTag . $headerClass . '>' . $module->title; ?></<?=$headerTag; ?>>
			<?php endif; ?>
			<?=$module->content; ?>
		</<?=$moduleTag; ?>>
	<?php endif;
}
function modChrome_no($module, &$params, &$attribs)
{
	if ($module->content)
	{
		echo $module->content;
	}
}
