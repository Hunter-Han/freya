Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'ingredients/search', to: 'ingredients#search', as: :ingredient_search
  get 'counties/search', to: 'counties#search', as: :county_search
  resources :counties, only: [:show, :index] do
    resources :ingredients, only: [:index]
  end
  resources :food_groups, only: [:show, :index]
  resources :ingredients, except: [:index] do
    resources :recipes, only: [:show, :index]
  end
  resources :ingredient_at_vendors
  resources :ingredient_seasons, only: [:index, :show]
  resources :review, except: [:edit, :update]
  resources :users
  resources :vendor


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
