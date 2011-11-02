class HomeController < ApplicationController
  def index
    @posts = WordpressPost.find(:all, :conditions => "post_type = 'post' AND post_status = 'publish'", :limit => '5', :order => 'post_date DESC')
  end

  def contact
  end
 
  def latest_commits
  	render :layout => false
  end
  
  def latest_tweets 
  	render :layout => false
  end

end
