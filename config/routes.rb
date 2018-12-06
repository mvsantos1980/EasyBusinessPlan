Rails.application.routes.draw do


  #Modulos do sistema

  resources :fixed_costs
  resources :products

  resources :human_resources do
    collection do
      get 'new'
      get 'edit'
      get 'human_resource'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

  resources :sales do
    collection do
      get 'new'
      get 'edit'
      get 'sale'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

  resources :pricings do
    collection do
      get 'new'
      get 'edit'
      get 'pricing'
      post 'create'
      post 'update'
      delete 'destroy'
    end
  end

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
  # Só admin acessa {
  resources :groups
  resources :questions
  resources :homepages
  resources :payments
  resources :options
  # }

  #DEVISE
  devise_for :users

  # devise_for :users, controllers: {
  #     sessions: 'users/sessions',
  #     registrations: 'users/registrations',
  #     passwords: 'users/passwords'
  # }


  #ROTAS
  root 'homepages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
