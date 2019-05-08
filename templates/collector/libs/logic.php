<?php defined('_JEXEC') or die;
$this->setGenerator(null);
$this->_script = $this->_scripts = array(); 
// Add jQuery
JHtml::_('jquery.framework', false);

// variables
$app          = JFactory::getApplication();
$doc          = JFactory::getDocument();
$menu         = $app->getMenu();
$active       = $app->getMenu()->getActive();
$params       = $app->getParams();
$pageclass    = $params->get('pageclass_sfx');
$url          = rtrim(JUri::base(), '/');
$tpath		  = '/templates/'.$this->template;
$option       = $app->input->getCmd('option', '');
$view         = $app->input->getCmd('view', '');
$social_title = $doc->getTitle();

// New meta
$doc->setMetadata('X-UA-Compatible', 'IE=edge,chrome=1');
$doc->setMetadata('viewport', 'width=device-width, initial-scale=1.0');

// Copyrights
$doc->setMetadata('copyright', trim($app->getCfg('sitename')));
$sitename = trim($app->getCfg('sitename'));

// template css, js
$doc->addStyleSheet($tpath . '/css/app.css');
$doc->addStyleSheet($tpath . '/css/style.css');