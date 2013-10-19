Dine::Application.routes.draw do


  resources :categories


  get "home/index"

  resources :pins
  resources :pin 

  devise_for :users
  match 'users/:id' => 'users#show', as: :user

  root :to => 'pins#index'
  get 'instagram' => 'pages#instagram'
  get 'list' => 'pages#list'
  get 'shop' => 'pages#shop'
  get 'service' => 'pages#service'
	get 'privacy' => 'pages#privacy'
  get 'menu' => 'pages#menu'
  get 'recipies' => 'pages#recipies'  
  get 'know' => 'pages#know'
  get 'give' => 'pages#give' 
  get 'how' => 'pages#how' 
 

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  match 'inform' => 'inform#new', :as => 'inform', :via => :get
  match 'inform' => 'inform#create', :as => 'inform', :via => :post

  as :user do
  match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end
  devise_for :users, :controllers => { :confirmations => "confirmations" }

end
