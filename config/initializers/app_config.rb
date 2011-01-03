# Thanks to Matt Swasey (http://www.viget.com/extend/simple-rails-or-ruby-application-configuration/)
# for this OpenStruct technique.  It makes referencing the constants a little cleaner than using YAML.

require 'ostruct'

App = OpenStruct.new({
  :email => OpenStruct.new({
    :address => 'admin@example.com',
    :password => 'secret'
  })
})

# Configure the mailer settings
RailsContactForm::Application.configure do
  if RAILS_ENV != 'test'
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