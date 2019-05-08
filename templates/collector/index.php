<?php defined('_JEXEC') or die;
include_once JPATH_THEMES . '/' . $this->template . '/libs/logic.php';
?>
<!DOCTYPE html>
<html lang="<?=$this->language; ?>" dir="<?=$this->direction; ?>">
<head>
	<meta property="og:locale" content="ru_RU">
	<meta property="og:title" content="<?=$doc->title; ?>">
	<meta property="og:description" content="<?=$doc->description; ?>">
	<meta property="og:url" content="<?=$url; ?>">
	<meta property="og:type" content="website">
	<meta property="og:image" content="<?=$tpath.'/images/logo.svg'; ?>">
	<link rel="icon" type="image/x-icon" href="<?=JURI::base(TRUE); ?>">
	<link rel="apple-touch-icon" sizes="120x120" href="<?=$tpath.'/images/logo.svg'; ?>">
	<base href="<?=$url; ?>">
	<jdoc:include type="head" />
</head>
<body class="<?=(($menu->getActive() == $menu->getDefault()) ? ('front') : ('site')).' '.$active->alias.''.$pageclass; ?>">
	<header class="header">
		<nav class="nav-top">
			<div class="container">
				<div class="row navbar navbar-light">
					<div class="nav-logo col-12 col-lg-2">
						<a href="<?=JURI::base(TRUE); ?>" class="logo navbar">
							<img src="<?=$tpath.'/images/logo.svg'; ?>" alt="<?=$sitename; ?>" itemprop = "logo">
							<h1 class="navbar-text"><?=JText::_('LOGONAME'); ?></h1>
						</a>
					</div>
					<address class="address col-12 col-lg-10">
						<div class="row">
							<div class="phone col-12 col-lg-5">
								<strong><?=JText::_('TITLE_PHONE'); ?>:</strong>
								<p><a href="tel:<?=JText::_('DESC_PHONE_HREF'); ?>"><?=JText::_('DESC_PHONE'); ?></a></p>
							</div>
							<div class="mail col-12 col-lg-3">
								<strong><?=JText::_('TITLE_MAIL'); ?>:</strong>
								<p><a href="mailto:<?=JText::_('DESC_MAIL'); ?>"><?=JText::_('DESC_MAIL'); ?></a></p>
							</div>
							<div class="location col-12 col-lg-4">
								<strong><?=JText::_('TITLE_LOCATION'); ?>:</strong>
								<p><a href="/location"><?=JText::_('DESC_LOCATION'); ?></a></p>
							</div>
						</div>
					</address>
				</div>
			</div>
		</nav>
		<!-- Menu -->
		<span class="position-absolute trigger"></span>
		<nav class="nav-bottom navbar navbar-expand-lg header" id="header">
			<div class="container">
				<div class="text-hide"><?=$sitename; ?></div>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navMain" aria-controls="navMain" aria-expanded="false">
					<span class="navbar-toggler-icon"></span>
				</button>
				<?php if ($this->countModules('menu')) : ?>
					<jdoc:include type="modules" name="menu" style="no" />
				<?php endif; ?>
			</div>
		</nav>
	</header>
	<?php if ($this->countModules('panel')) : ?>
		<section class="panel">
			<jdoc:include type="modules" name="panel" style="default" />
			<div class="wave-gradient">
				<svg id="wave" viewbox="0 0 75 20">
					<path class="path-2" d="M0 30 V12 Q30 17 55 12 T100 11 V30z" />
				</svg>
			</div>
		</section>
	<?php endif; ?>
	<aside class="aside">
		<div class="container">
		<?php if ($this->countModules('banner')) : ?>			
			<jdoc:include type="modules" name="banner" style="no" />
		<?php endif; ?>	
		</div>
	</aside>
	<main class="main">
		<?php if($app->getMessageQueue()) : ?>
			<div class="alert alert-warning" role="alert">
				<jdoc:include type="message" />
			</div>
		<?php endif; ?>			
		<?php if ($menu->getActive()->id != $menu->getDefault()->id) : ?>
			<jdoc:include type="component" />
		<?php endif; ?>
		<?php if ($this->countModules('main')) : ?>
			<jdoc:include type="modules" name="main" style="no" />
		<?php endif; ?>	
	</main>
	<?php if ($this->countModules('events') || $this->countModules('scrap')): ?>
	<section id="reservation" class="reservation jumbotron jumbotron-fluid">
		<?php if ($menu->getActive()->id === $menu->getDefault()->id) : ?>
		<div class="container">
			<div class="row">
		<?php endif; ?>
				<?php if ($this->countModules('events')) : ?>
					<jdoc:include type="modules" name="events" style="default" />
				<?php endif; ?>
				<?php if ($this->countModules('scrap')) : ?>
					<jdoc:include type="modules" name="scrap" style="default" />
				<?php endif; ?>
		<?php if ($menu->getActive()->id === $menu->getDefault()->id) : ?>
			</div>
		</div>
		<?php endif; ?>
	</section>
	<?php endif; ?>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<small class="site-info col-12 col-lg-4">
					<div class="copy">&copy; <?=date('Y'); ?> <?=$sitename; ?></div>
					<a href="<?=$tpath.'/images/DOCUMENTS/Privacy_Policy.docx'; ?>" target="_blank"><?=JText::_('TITLE_TERMS_USE'); ?></a>
					<a href="<?=$tpath.'/images/DOCUMENTS/legal_details.docx'; ?>" target="_blank"><?=JText::_('TITLE_LEGAL_INFO'); ?></a>
					<a href="<?=$tpath.'/images/DOCUMENTS/Terms_use.docx'; ?>" target="_blank"><?=JText::_('TITLE_PRIVAT_POL'); ?></a>
				</small>
				<div class="pays col-12 col-lg-6">
					<img src="<?=$tpath.'/images/visa.svg'; ?>" alt="visa-pays" >
					<img src="<?=$tpath.'/images/mc.svg'; ?>" alt="mc-pays">
					<img src="<?=$tpath.'/images/mir.svg'; ?>" alt="mir-pays">
				</div>
				<div class="logo col-12 col-lg-2">
					<a href="<?=JURI::base(TRUE); ?>" class="navbar-brand">
						<img src="<?=$tpath.'/images/logo.svg'; ?>" alt="<?=$sitename; ?>" itemprop = "logo">
					</a>
				</div>
				<div id="top-top" class="top-top">
					<i class="fal fa-3x fa-chevron-circle-up"></i>
				</div>		
			</div>
		</div>
	</footer>
	<script src="/templates/<?=$this->template ?>/js/libs.js"></script>
	<script src="/templates/<?=$this->template ?>/js/main.js"></script>
	<jdoc:include type="modules" name="debug" style="no" />
	<?php if($menu->getActive()->alias === 'location'): ?>
		<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
		<script src="/templates/<?=$this->template ?>/js/map_api.js"></script>
	<?php endif; ?>
	<!-- Yandex.Metrika counter -->
	<script type="text/javascript" > (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)}; m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)}) (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym"); ym(48886592, "init", { clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); </script> <noscript><div><img src="https://mc.yandex.ru/watch/48886592" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
	<!-- /Yandex.Metrika counter -->
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119287771-1"></script>
	<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	gtag('config', 'UA-119287771-1');
	</script>
</body>
</html>