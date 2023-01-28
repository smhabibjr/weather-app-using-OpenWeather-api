Rails.application.routes.draw do
  root 'city#index'
  resources :weather, only: [:index, :create,]
  #root 'weather#index'
  get 'weather/show' => "weather#show"
  resources :city, only: [:index, :create]
end
