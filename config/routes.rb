Rails.application.routes.draw do

  resources :users do
    collection do
      get "current" => "users#current"
    end
  end
  
  post 'user_token' => 'user_token#create'
  resources :users          

  resources :documents
  resources :districts
  resources :appointments
  resources :user_extra_info , param: :user_id 
  resources :relative
  get "relative/:user_id", to: 'relative#indexuserid' 
  get "relative/:user_id/:tipo_familiar", to: "relative#showfamiliar"
  


  resources :inscription_information , param: :user_id 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
