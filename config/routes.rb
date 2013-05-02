Shortener::Application.routes.draw do
  resources :links, except:[:edit]
  get ':in_url' => 'links#go'
  root :to => 'links#new'
end
