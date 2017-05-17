Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:new, :create, :index]
    #   member do
    #   get :songs
    #   put :songs
    # end
    
  end

  resources :songs, except: [:new, :create]  
  
end
