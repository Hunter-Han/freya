Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'counties/search', to: 'counties#search', as: :county_search
  resources :counties, only: [:show, :index] do
    resources :ingredients, only: [:index]
  end
  resources :food_groups, only: [:show, :index]
  resources :ingredients, except: [:index]
  resources :ingredient_at_vendors
  resources :ingredient_seasons, only: [:index, :show]
  resources :review, except: [:edit, :update]
  resources :users
  resources :vendor


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
