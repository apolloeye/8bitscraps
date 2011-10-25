class HomeController < ApplicationController
  def index
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
