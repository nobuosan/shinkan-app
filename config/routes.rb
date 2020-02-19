Rails.application.routes.draw do
  
  get 'users/index'
  devise_for :users
  root to:"homes#index"
  get'/memos/index',to:"memos#index"
  get '/new',to:"memos#new"
  post '/create' ,to:"memos#create"
  delete '/memos/:id' ,to:'memos#destroy'
  get '/memos/:id/edit' ,to:'memos#edit'
  patch '/memos/:id' ,to:'memos#update'
  get '/categories/:id',to:'categories#show'
  get '/users/:id',to:'users#show'
end