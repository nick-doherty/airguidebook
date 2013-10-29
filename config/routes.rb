AirguidebookApp::Application.routes.draw do
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/welcome' => 'users#welcome'

  resources :users, :houses, :region_facts, :suburb_facts, :restaurants, :transport_links, :amenities, :emergency_contacts, :extras
end