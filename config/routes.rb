Blocmetrics::Application.routes.draw do

  resources :events, only: [:index]

  post :events, to: 'events#create'
  match 'events' => "events#index", via: :options
end
