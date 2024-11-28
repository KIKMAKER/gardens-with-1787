Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :gardens, only: :show do
    # makes the routes come after /gardens/:id
    resources :plants, only: [:create]
  end
  # resources :plants, only: :show
end
# @plant = Plant.find(params[:id])
# @plant.garden
