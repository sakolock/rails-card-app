Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cards#index'

  resources :cards, only: [:show] do |card|
    collection do
      get '/search', to: 'cards#search'
    end
  end

  get 'register', to: 'users#new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
end
