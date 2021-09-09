Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
      namespace :v1 do
          resources :goals, only: [:update, :index]
          resources :totals, only: [:update, :index]
          resources :spendless_amounts, only: [:index, :create]
      end
  end
end
