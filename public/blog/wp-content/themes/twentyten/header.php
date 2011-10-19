<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */
?>



		
		
		
		
		
		
		
		
		
		
		
		<!DOCTYPE html>
		<html <?php language_attributes(); ?>>
		<head>
		<meta charset="<?php bloginfo( 'charset' ); ?>" />
		<title><?php
			/*
			 * Print the <title> tag based on what is being viewed.
			 */
			global $page, $paged;

			wp_title( '|', true, 'right' );

			// Add the blog name.
			bloginfo( 'name' );

			// Add the blog description for the home/front page.
			$site_description = get_bloginfo( 'description', 'display' );
			if ( $site_description && ( is_home() || is_front_page() ) )
				echo " | $site_description";

			// Add a page number if necessary:
			if ( $paged >= 2 || $page >= 2 )
				echo ' | ' . sprintf( __( 'Page %s', 'twentyten' ), max( $paged, $page ) );

			?></title>
			
			
			<link rel="profile" href="http://gmpg.org/xfn/11" />
			<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
			<?php
				/* We add some JavaScript to pages with the comment form
				 * to support sites with threaded comments (when in use).
				 */
				if ( is_singular() && get_option( 'thread_comments' ) )
					wp_enqueue_script( 'comment-reply' );

				/* Always have wp_head() just before the closing </head>
				 * tag of your theme, or you will break many plugins, which
				 * generally use this hook to add elements to <head> such
				 * as styles, scripts, and meta tags.
				 */
				wp_head();
			?>
			<style type="text/css" media="screen">
				html { margin-top: 0px !important; }
				* html body { margin-top: 0px !important; }
			</style>
			</head>
			
			
			<link href="/stylesheets/style.css?1318789477" media="screen" rel="stylesheet" type="text/css" />

			<!-- Include jQuery first. -->
			<script type="text/javascript" src="/javascripts/jquery-1.3.2.min.js"></script>

		    <!-- Include the below script, Copyright 2010, Brandon Aaron (http://brandonaaron.net/) for scrollwheel support. -->
		    <script type="text/javascript" src="/javascripts/jquery-mousewheel/jquery.mousewheel.min.js"></script>

			<link rel="stylesheet" type="text/css" href="/stylesheets/slidedeck.skin.css" media="screen" />
		    <!-- Styles for the skin that only load for Internet Explorer -->
		    <!--[if lte IE 8]>
		    <link rel="stylesheet" type="text/css" href="/stylesheets/slidedeck.skin.ie.css" media="screen,handheld" />
		    <![endif]-->

		    <!-- Include the SlideDeck jQuery script. -->
			<script type="text/javascript" src="/javascripts/slidedeck.jquery.lite.pack.js"></script>

		    <style type="text/css">
		        #slidedeck_frame {
		            width: 901px;
		            height: 300px;
		        }        
		    </style>
		</head>
		<body>

			<div id="banner">


				<div id="navigation">
					<ul>
						<li><a href="/">Home</a></li>
						<li><a href="/project">Projects</a></li>
						<li><a href="/blog">Blog</a></li>
						<li><a href="/contact">Contact</a></li>

					</ul>
				</div>
				<div id="social">
					<ul>
						<li><a href="http://feeds.feedburner.com/8bit/scraps" target="_blank"><img alt="Rss" height="27" src="/images/rss.png?1318360266" width="27" /></a></li>
						<li><a href="http://twitter.com/#!/8bitscraps" target="_blank"><img alt="Twitter" height="40" src="/images/twitter.png?1318359914" style="margin-top:-5px;" width="40" /></a></li>

						<li><a href="https://github.com/bitscraps" target="_blank"><img alt="Github_logo" height="30" src="/images/github_logo.png?1318359469" width="30" /></a></li>

					</ul>
				</div>

		  	</div>

			<div id="header"><img alt="8bitscraps" src="/images/8bitscraps.png?1318357012" /></div>

			<hr>

			<div id="content-container">
