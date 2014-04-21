Blocmetrics::Application.routes.draw do

  match 'events' => "events#index", via: :get

  post :events, to: 'events#create'
  match 'events' => "events#index", via: :options
end
