Rails.application.routes.draw do
  resources :restaurants do
    # "/restaurants/..."
    collection do
      # get "restaurants/top", to: "restaurants#top"
      get :top
      # get :bad
    end

    member do
      get :chef
    end

    resources :reviews, only: [ :new, :create ]
  end

  resources :reviews, only: [:destroy]
end
