Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:new, :create, :index]
  end

  resources :songs, except: [:new, :create]
  
end
