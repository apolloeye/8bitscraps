class HomeController < ApplicationController
  def index
    @posts = WordpressPost.find(:all, :conditions => "post_type = 'post' AND post_status = 'publish'", :limit => '5', :order => 'post_date DESC')
  end

  def contact
  	if request.post?
  		if params[:name] != '' && params[:email] != '' && params[:comment] != '' && params[:email] =~ /(.*)\@(.*)\.(.*)/
  			if Emailer.deliver_comment(params[:name], params[:email], params[:comment])
  				@email_sent = true
  			else
  				@email_sent_error = true
  			end
  		else
  		 	@errors = true
  		end
  		
  		
  	end
  end
 
  def latest_commits
  	render :layout => false
  end
  
  def latest_tweets 
  	render :layout => false
  end

  def redirect 
  	if params[:path]
  		redirect_to "#{params[:path]}", :status => :moved_permanently
  	end
  end
end
