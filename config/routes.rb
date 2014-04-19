Blocmetrics::Application.routes.draw do

  post :events, to: 'events#create'
  match 'events' => "events#index", via: :options
end
