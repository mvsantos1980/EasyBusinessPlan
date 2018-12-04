Rails.application.routes.draw do

  resources :human_resources
  resources :sales
  resources :pricings

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

  resources :marketings do
    collection do
      get 'new'
      get 'edit'
      get 'marketing'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

  resources :finances do
    collection do
      get 'new'
      get 'edit'
      get 'finance'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

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
  resources :homepages

  #DEVISE
  #devise_for :users

  # devise_for :users, controllers: {
  #     sessions: 'users/sessions',
  #     registrations: 'users/registrations',
  #     passwords: 'users/passwords'
  # }


  #ROTAS
  root 'homepages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
