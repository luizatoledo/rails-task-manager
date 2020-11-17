Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # route to list tasks (HTTP verb GET, controller action INDEX)
  # resources :tasks
  # show all tasks in db
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # show form to create new task
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  # show details of one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # create new task 
  post 'tasks', to: 'tasks#create'

  # show edit form
  get "tasks/:id/edit", to: "tasks#edit", as: 'edit_task'

  # update info
  patch "tasks/:id", to: "tasks#update"

  # delete task
  delete "tasks/:id", to: "tasks#destroy"
end
