Rails.application.routes.draw do
  get '/' => "users#new"
  get 'index' => "users#index"
  get 'users/:id/edit' => "users#edit"
  get 'users/:id' => "users#show"
  post 'users/create' => "users#create"
  post 'users/:id/update' => "users#update"
  post 'users/:id/destroy' => "users#destroy"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
