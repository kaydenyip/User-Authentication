Rails.application.routes.draw do
  devise_for :users 
  
  devise_scope :user do  
    get 'users/sign_in' => 'devise_session#new'
    get '/users/sign_out' => 'devise/sessions#destroy'  
    get 'users/sign_up' => 'devise/registration#new'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "homepage" => 'home#homepage'
  root to: "home#homepage"
end
