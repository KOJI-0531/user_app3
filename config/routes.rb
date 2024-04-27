Rails.application.routes.draw do
  get '/' => "users#new", as:"new"
  get 'index' => "users#index"
  get 'users/:id/edit' => "users#edit", as:"edit"
  get 'users/:id' => "users#show", as:"show"
  post 'users/create' => "users#create"
  patch 'users/:id/update' => "users#update", as:"update"
  post 'users/:id/destroy' => "users#destroy"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
