Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  post 'create', to: 'home#create'
  post 'index', to: 'home#index'
  get 'municipalities', to: 'home#municipalities'
  get 'centers', to: 'home#centers'

end
