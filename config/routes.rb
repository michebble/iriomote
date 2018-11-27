Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :employees, only: [:index, :new, :show]



  resources :teams do
    resources :periods, shallow: true
  end

  resources :periods do
    resources :objectives, shallow: true
  end

  resources :objectives do
    resources :key_results, shallow: true
  end

  resources :key_results
end
