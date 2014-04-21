Blocmetrics::Application.routes.draw do

  root to: 'events#index'

  post :events, to: 'events#create'
  match 'events' => "events#index", via: :options
end
