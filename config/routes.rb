Rails.application.routes.draw do
  # get "tasks" => "tasks#index"
  # get "tasks/new" => "tasks#new"
  # get "tasks" => "tasks#show"
  # post "tasks" => "tasks#create"
  # get "tasks/:id/edit" => "tasks#edit"
  # patch "tasks/:id" => "tasks#update"
  # delete "tasks/:id" => "tasks#destroy"
  resources :tasks
end
