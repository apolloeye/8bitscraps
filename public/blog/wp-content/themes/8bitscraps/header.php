<html>
<head>
	<title>8 Bit Scraps</title>
	<%= stylesheet_link_tag "style" %>
	
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
				<li><%= link_to 'Home', :controller => 'home' %></li>
				<li><%= link_to 'Projects', :controller => 'project' %></li>
				<li><%= link_to 'Blog', :controller => 'blog' %></li>
				<li><%= link_to 'Contact', :controller => 'contact' %></li>
			</ul>
		</div>
		<div id="social">
			<ul>
				<li><a href="http://feeds.feedburner.com/8bit/scraps" target="_blank"><%= image_tag("rss.png", :size => '27x27') %></a></li>
				<li><a href="http://twitter.com/#!/8bitscraps" target="_blank"><%= image_tag("twitter.png", :size => '40x40', :style => 'margin-top:-5px;') %></a></li>
				
				<li><a href="https://github.com/bitscraps" target="_blank"><%= image_tag("github_logo.png", :size => '30x30')%></a></li>
						
			</ul>
		</div>
  	</div>

	<div id="header"><%= image_tag "8bitscraps.png" %></div>
	
	<hr>
	
	<div id="content">