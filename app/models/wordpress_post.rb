class WordpressPost < ActiveRecord::Base

	establish_connection :wordpress
  def self.table_name() "wp_posts" end

	
end
