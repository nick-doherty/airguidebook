AirguidebookApp::Application.routes.draw do
  root :to => 'pages#home'
  resources :users, :houses, :region_facts
end
