Rails.application.routes.draw do

  get 'teacher/index'

  get 'teacher/new'

  get 'teacher/show'

  resources :responses

  resources :questionnaires
  resources :answers

  resources :students

  devise_for :users
  root 'static_pages#home' # asi se setea la pagina de inicio
  resources :quizzes
  resources :questions
  #get '/quizzes/show'#  get '/quizzes'
  get  '/students/todos'
  get  '/help', to: 'static_pages#help'
  get  '/about' ,    to:  'static_pages#about'
  get   '/contact' ,  to:  'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get  '/estudiante/login',  to: 'users#estudiante' , as: 'estudiante'
  get  '/profesor/registrar',  to: 'users#registrar' , as: 'registrar'
  get  '/estudiante/cuestionario',  to: 'users#cuestionario' , as: 'cuestionario'
  get  '/profesor/pregunta',  to: 'users#pregunta' , as: 'pregunta'
  get  '/estudiante/terminado',  to: 'users#terminado' , as: 'terminado'
  get  '/respuestapregutna/:quiz/:user_id/',  to: 'questionnaires#index' , as: 'respuestapregutnaindex'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
