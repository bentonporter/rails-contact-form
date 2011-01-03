RailsContactForm::Application.routes.draw do

  resources :contact_messages, :only => [:create]

  root :to => 'home#index'

end
