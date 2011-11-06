class WordpressMeta < ActiveRecord::Base

	establish_connection :wordpress
  def self.table_name() "wp_postmeta" end

	
end
