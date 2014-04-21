Blocmetrics::Application.routes.draw do

  devise_for :users
  match 'events', to: 'events#index', via: :get

  post :events, to: 'events#create'
  match 'events' => "events#index", via: :options

  match 'about', to: 'welcome#about', via: :get

  root to: 'welcome#index'
end
