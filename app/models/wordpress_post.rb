class WordpressPost < ActiveRecord::Base

	establish_connection :wordpress
  def self.table_name() "wp_posts" end

  def thumbnail
  	@thumb = WordpressMeta.find(:first, :conditions => ["post_id = ? AND meta_key = ?", self.ID, "summary_thumbnail"]);
  	if @thumb 
  		return @thumb.meta_value
  		
  	else
  		return nil
  	end
  end
  
  def permalink
  	@thumb = WordpressMeta.find(:first, :conditions => ["post_id = ? AND meta_key = ?", self.ID, "permalink"]);
  	if @thumb 
  		return @thumb.meta_value
  		
  	else
  		return nil
  	end
  end
end
