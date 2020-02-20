Rails.application.routes.draw do
  # https://github.com/heartcombo/devise/wiki/How-to-Setup-Multiple-Devise-User-Models
  devise_for :customers, path: 'customers', controllers: { sessions: "customers/sessions", registrations: "customers/registrations" }
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  resources :listings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'listings#landingpage'
  get '/all' => 'listings#index'
  get '/search'  => 'listings#search'
  # tentatively when customers sign in, it'll bring them to listings pages first. will change their routes to smth else
  get 'customers/:id' => 'listings#index'
  

  get '/reviews' => 'reviews#index', as: 'reviews'
  get '/reviews/new' => 'reviews#new', as: 'new_review'
  post '/reviews' => 'reviews#create'
  get '/reviews/:id' => 'reviews#show' , as: 'review'
  get '/reviews/:id/edit' => 'reviews#edit', as: 'edit_review'
  patch '/reviews/:id' => 'reviews#update'
  delete '/reviews/:id' => 'reviews#destroy'

end