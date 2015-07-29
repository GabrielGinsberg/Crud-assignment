Rails.application.routes.draw do
  # CREATE
  get '/new' => 'user#new'
  get '/create' => 'user#create'
  
  # READ
  get '/idea/:id' => 'user#show'
  get '/idea' => 'user#index'
  
  # UPDATE
  get '/idea/:id/edit' => 'user#edit'
  get '/update/:id' => 'user#update'
  
  #DESTROY
  get '/idea/:id/destroy' => 'user#destroy'
  
end
