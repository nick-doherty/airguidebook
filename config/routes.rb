AirguidebookApp::Application.routes.draw do
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, :houses, :region_facts, :suburb_facts, :restaurants, :except => [:edit] do
    collection do
      get 'edit'
    end
  end
end
