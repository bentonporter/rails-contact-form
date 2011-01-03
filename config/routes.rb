RailsContactForm::Application.routes.draw do

  get 'contact_messages/create'

  root :to => 'home#index'

end
