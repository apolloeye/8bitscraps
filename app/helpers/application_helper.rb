# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  require 'rubygems'
  require 'simple-rss'
  require 'open-uri'
  require 'twitter'
  
  def get_github_commits
    feed = SimpleRSS.parse open('https://github.com/bitscraps.atom')
    @text = ''
    @commits = 0
    feed.entries.each do |entry|
      if @commits <= 5
        if entry.title =~ /.*? pushed .*?/
          @content = "<div class='commit'>#{entry.content}</div>"
          @content.gsub!(/\&lt;.*?\&gt;/, "")
          @content.gsub!(/.*? committed .*?\n/, "<br/>-")
          @content.gsub!(/View comparison for these .*? commits .*/, "")
          @content =~ /(.*?) more commits.*/
          @content.gsub!(/(.*?) more commits.*/, "<br/>- #{$1} more commits")
          
          @text += "<div class=commit>#{@content.sub(/^<br\/>/, "")}</div>"
          @text += "<div class='committer'>#{entry.title.gsub(/^.*? /, "").gsub(/bitscraps\//, "")}<br/>on #{entry.published.to_s.gsub(/ ..\:.*/, "")}</div>"
         @commits += 1
        end
      end
     
    end  
    @return = "<div class=github-commits>#{@text}</div>"
  end
  
  def get_twitter_updates
    @return = '<div class="twitter-update"><div class="update">'+Twitter.user_timeline("8bitscraps").first.text+'</div>'
    @return += '<div class="date">'+Twitter.user_timeline("8bitscraps").first.created_at.gsub!(/..:..:...*/, "")+'</div></div>'
    @return += '<div class="twitter-update"><div class="update">'+Twitter.user_timeline("8bitscraps").second.text+'</div>'
    @return += '<div class="date">'+Twitter.user_timeline("8bitscraps").second.created_at.gsub!(/..:..:...*/, "")+'</div></div>'
    @return += '<div class="twitter-update"><div class="update">'+Twitter.user_timeline("8bitscraps").third.text+'</div>'
    @return += '<div class="date">'+Twitter.user_timeline("8bitscraps").third.created_at.gsub!(/..:..:...*/, "")+'</div></div>'
    @return += '<div class="twitter-update"><div class="update">'+Twitter.user_timeline("8bitscraps").fourth.text+'</div>'
    @return += '<div class="date">'+Twitter.user_timeline("8bitscraps").fourth.created_at.gsub!(/..:..:...*/, "")+'</div></div>'
    @return += '<div class="twitter-update"><div class="update">'+Twitter.user_timeline("8bitscraps").fifth.text+'</div>'
    @return += '<div class="date">'+Twitter.user_timeline("8bitscraps").fifth.created_at.gsub!(/..:..:...*/, "")+'</div></div>'
   
  end
end
