class Emailer < ActionMailer::Base
  

  def comment(name, email, comment, sent_at = Time.now)
    subject    'New Message from 8-Bit Scraps'
    recipients 'graham.hadgraft@gmail.com'
    from       "\"#{name}\" <#{email}>"
    sent_on    sent_at
    
    body       :comment => comment,
    		   :name => name	
  end

end
