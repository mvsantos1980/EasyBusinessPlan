Rails.application.routes.draw do

  #Modulos do sistema
  resources :business_processes do
    collection do
      get 'new'
      get 'edit'
      get 'business_process'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

  resources :resources do
    collection do
      get 'new'
      get 'edit'
      get 'resources'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

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

  resources :competitivenesses do
    collection do
      get 'new'
      get 'edit'
      get 'competitiveness'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

  resources :businesses do
    collection do
      get 'new'
      get 'edit'
      get 'bussiness'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

  # base operacional do sistema
  resources :answers
  resources :groups
  resources :questions

  #DEVISE
  devise_for :users

  # devise_for :users, controllers: {
  #     sessions: 'users/sessions',
  #     registrations: 'users/registrations',
  #     passwords: 'users/passwords'
  # }



  root 'homepages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
