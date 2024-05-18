Rails.application.routes.draw do
  get 'posts/index' => "posts#index", as:"p_index"
  get 'posts/new' => "posts#new", as:"p_new"
  post 'posts/create' => "posts#create", as:"p_create"
  
  get 'login' => "users#login_form", as:"login"
  get '/' => "users#new", as:"new"
  get 'index' => "users#index"
  get 'users/:id/edit' => "users#edit", as:"edit"
  get 'users/:id' => "users#show", as:"show"
  post 'users/create' => "users#create", as:"create"
  patch 'users/:id/update' => "users#update", as:"update"
  post 'users/:id/destroy' => "users#destroy", as:"destroy"
  post 'login' => "users#login", as:"log"
  post "logout" => "users#logout"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
