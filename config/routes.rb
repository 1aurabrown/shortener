Shortener::Application.routes.draw do
  resources :links
  get ':in_url' => 'links#go'
  root :to => 'links#new'
end
