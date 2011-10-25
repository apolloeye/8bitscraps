<?php
/**
 * The Sidebar containing the primary and secondary widget areas.
 *
 * @package WordPress
 * @subpackage Twenty_Ten
 * @since Twenty Ten 1.0
 */
?>

		<div id="primary" class="widget-area" role="complementary">
			<ul class="xoxo">
			<li id="search" class="widget-container widget_search">
				<?php get_search_form(); ?>
			</li>
			
<li id="meta" class="widget-container">
				<h3 class="widget-title"><?php _e( 'Recent Post', 'twentyten' ); ?></h3>
							<?php
							$the_query = new WP_Query('showposts=5&orderby=post_date&order=desc');
							while ($the_query->have_posts()) : $the_query->the_post(); ?>
									<div class="recent-post">
										<?php $lead = get_post_meta($post->ID, "summary_thumbnail", true);?>
										
					<div class="thumb-image">
					<?php if($lead !== '') { ?>
					<img src="<?php echo $lead ?>" height=35 width=35 />  
					<?php } ?>
			</div>
			
										 <a title="<?php the_title(); ?>" href="<?php the_permalink() ?>" rel="bookmark"><?php the_title(); ?></a>
										 <div class="clear"></div>
									</div>				

							<?php endwhile; ?>
							<?php wp_reset_query(); ?>
			</li>

<?php
	/* When we call the dynamic_sidebar() function, it'll spit out
	 * the widgets for that widget area. If it instead returns false,
	 * then the sidebar simply doesn't exist, so we'll hard-code in
	 * some default sidebar stuff just in case.
	 */
	if ( ! dynamic_sidebar( 'primary-widget-area' ) ) : ?>

			

			<li id="archives" class="widget-container">
				<h3 class="widget-title"><?php _e( 'Archives', 'twentyten' ); ?></h3>
				<ul>
					<?php wp_get_archives( 'type=monthly' ); ?>
				</ul>
			</li>

			<li id="meta" class="widget-container">
				<h3 class="widget-title"><?php _e( 'Meta', 'twentyten' ); ?></h3>
				<ul>
					<?php wp_register(); ?>
					<li><?php wp_loginout(); ?></li>
					<?php wp_meta(); ?>
				</ul>
			</li>

		<?php endif; // end primary widget area ?>
		
		
			</ul>
		</div><!-- #primary .widget-area -->

<?php
	// A second sidebar for widgets, just because.
	if ( is_active_sidebar( 'secondary-widget-area' ) ) : ?>

		<div id="secondary" class="widget-area" role="complementary">
			<ul class="xoxo">
				<?php dynamic_sidebar( 'secondary-widget-area' ); ?>
			</ul>
		</div><!-- #secondary .widget-area -->

<?php endif; ?>
