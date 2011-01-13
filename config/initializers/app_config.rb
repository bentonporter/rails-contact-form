require 'ostruct'

App = OpenStruct.new({
  :email => OpenStruct.new({
    :address => 'admin@example.com',
    :password => 'my_password'
  })
})

# Configure the mailer settings
RailsContactForm::Application.configure do
  if !Rails.env.test?
    config.action_mailer.delivery_method = :smtp 
    config.action_mailer.raise_delivery_errors = false
    config.action_mailer.smtp_settings = { :address => 'smtp.gmail.com', 
                                           :port => 587, 
                                           :user_name => App.email.address, 
                                           :password => App.email.password, 
                                           :authentication => 'plain', 
                                           :enable_starttls_auto => true }
  end
end