Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   # CREATE
  get 'tasks/new' => 'tasks#new'
  post 'tasks' => "tasks#create"

  # VIEW
  get 'tasks' => 'tasks#index'
  get 'tasks/:id' => 'tasks#show', as: :task

  # UPDATE
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit
  patch 'tasks/:id' => 'tasks#update'

  # DELETE
  delete 'tasks/:id' => 'tasks#destroy', as: :destroy
end
