class Notifier < ActionMailer::Base
  def contact_me(contact_message)
    # Pass the message to the notifier view
    @contact_message = contact_message
    
    # Return a new mail message
    mail(:to => 'admin@example.com',
         :from => contact_message.email,
         :subject => contact_message.subject)
  end
end
