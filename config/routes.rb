Rails.application.routes.draw do
  root 'listings#landingpage'
  # https://github.com/heartcombo/devise/wiki/How-to-Setup-Multiple-Devise-User-Models
  devise_for :customers, path: 'customers', controllers: { sessions: "customers/sessions", registrations: "customers/registrations", errors:"users/errors" }
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: "users/registrations", errors:"users/errors" }
  resources :listings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profiles' => 'listings#profile', as: 'profile'
  # get '/newprofile' => 'listings#landingpage', as: 'newprofile'



  get '/search'  => 'listings#search'
  # tentatively when customers sign in, it'll bring them to listings pages first. will change their routes to smth else
  get 'customers/:id' => 'listings#index'


  # get '/reviews' => 'reviews#index', as: 'reviews'
  # get '/reviews/new' => 'reviews#new', as: 'new_review'
  post 'listings/:id/reviews' => 'reviews#create', as: 'listing_reviews'
  # get '/reviews/:id' => 'reviews#show' , as: 'review'
  get 'listings/:id/reviews/:review_id/edit' => 'reviews#edit', as: 'edit_review'
  patch 'listings/:id/reviews/:review_id' => 'reviews#update', as: 'review'
  delete 'listings/:id/reviews/:review_id' => 'reviews#destroy'


end