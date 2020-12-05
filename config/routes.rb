Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   # CREATE
  get 'tasks/new' => 'tasks#new'
  post 'tasks' => "tasks#create"

  # VIEW
  get 'tasks' => 'tasks#index'
  get 'tasks/:id' => 'tasks#show'

  # UPDATE
  get 'tasks/:id/edit' => 'tasks#edit'
  patch 'tasks'

end
