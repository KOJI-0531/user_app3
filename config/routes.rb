Rails.application.routes.draw do
  get '/' => "users#new"
  post 'users/create' => "users#create"
  
  get 'index' => "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
