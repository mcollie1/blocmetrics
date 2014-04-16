Blocmetrics::Application.routes.draw do

  match 'events' => "events#index", via: :options
end
