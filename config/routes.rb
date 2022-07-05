Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'resume', to: 'pages#resume'
  get 'projects', to: 'pages#projects'
  get 'new', to: 'submissions#new'
  post 'create', to: 'submissions#create'
end
