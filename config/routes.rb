Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
      namespace :v1 do
          resources :goals, only: [:index]
        #   resources :totals, only: [:create, :edit, :update]
        #   resources :spendless_amounts, only: [:create]
      end
  end
end
