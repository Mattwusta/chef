Dine::Application.routes.draw do

  resources :orderlists
  resources :shoplists
  resources :categories

  get "home/index"

  resources :pins
  resources :pin 
  
  devise_for :users
  match 'users/:id' => 'users#show', as: :user

 
  root :to => 'pins#index'
  get 'usering' => 'users#index'
  get 'detail' => 'users#detail'
  get 'manage' => 'orderlists#manage'
  get 'admin' => 'pages#admin'
  get 'return' => 'pages#return'
  get 'faq' => 'pages#faq'
  get 'why' => 'pages#why'
  get 'service' => 'pages#service'
	get 'privacy' => 'pages#privacy'
  get 'menu' => 'pages#menu'
  get 'recipies' => 'pages#recipies'  
  get 'know' => 'pages#know'
  get 'give' => 'pages#give' 
  get 'how' => 'pages#how' 
  get 'dish1' => 'pages#dish1'
  get 'dish2' => 'pages#dish2' 
  get 'dish3' => 'pages#dish3' 
  get 'account' => 'pages#account' 
 

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  match 'alert' => 'alert#new', :as => 'alert',  :via => :get
  match 'alert'  => 'alert#create', :as => 'alert', :via => :post

  as :user do
  match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end
  devise_for :users, :controllers => { :confirmations => "confirmations" }

end
