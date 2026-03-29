Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  # get "flats", to: "flats#index"
  # get "flats/new", to: "flats#new"
  # post "flats", to: "flats#create"
  # get "flats/:id/edit", to: "flats#edit", as: :edit_flat
  # patch "flats/:id", to: "flats#update"
  # delete "flats/:id", to: "flats#destroy"
  # get "flats/:id", to: "flats#show", as: :flat

  resources :flats do
    resources :reviews, only: %i[new create]
  end

  resources :reviews, only: %i[destroy]
end
