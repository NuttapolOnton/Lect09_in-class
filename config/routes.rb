Rails.application.routes.draw do
  get 'main/login'
  get 'main/create'
  get 'main/destroy'
  resources :users
  resources :scores
  resources :students
  get "/students/:id/edit_score", to: "student_score#home"
  get "/student_score/delete", to:"student_score#delete"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
