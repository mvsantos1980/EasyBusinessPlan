Rails.application.routes.draw do
  resources :resources
  resources :marketings
  resources :homepages
  resources :finances
  resources :contextualizations
  resources :competitivenesses
  resources :businesses
  resources :answers
  resources :groups
  resources :questions

  root 'homepages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
