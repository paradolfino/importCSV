Rails.application.routes.draw do
  resources :participants do
    collection { post :import}
  end
  
  root 'participants#index'
end
