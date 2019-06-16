Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  resources :users do
    collection do
      get "users/current" => "users#current"
    end
  end
  
  post 'user_token' => 'user_token#create'
  resources :users

  resources :documents
  resources :districts
  resources :appointments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
