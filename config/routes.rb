Rails.application.routes.draw do
  devise_for :customers, path: 'customers', controllers: { sessions: "customers/sessions", registrations: "customers/registrations" }
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  resources :listings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'listings#landingpage'
  get '/all' => 'listings#index'
  # tentatively when customers sign in, it'll bring them to listings pages first. will change their routes to smth else
  get 'customers/:id' => 'listings#index'


end