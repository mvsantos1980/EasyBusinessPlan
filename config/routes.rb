Rails.application.routes.draw do
  devise_for :users
  resources :resources
  resources :marketings
  resources :homepages
  resources :finances

  resources :contextualizations do
    collection do
      get 'new'
      get 'edit'
      get 'contextualization'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

  resources :competitivenesses
  resources :businesses
  resources :answers
  resources :groups
  resources :questions

  # devise_for :users, controllers: {
  #     sessions: 'users/sessions',
  #     registrations: 'users/registrations',
  #     passwords: 'users/passwords'
  # }



  root 'homepages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
