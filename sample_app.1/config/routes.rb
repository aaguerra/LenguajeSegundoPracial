Rails.application.routes.draw do
  

  root 'static_pages#home' # asi se setea la pagina de inicio

  get  '/help', to: 'static_pages#help'
  get  '/about' ,    to:  'static_pages#about' 
  get   '/contact' ,  to:  'static_pages#contact' 
  get  '/signup',  to: 'users#new'
  get  '/estudiante/login',  to: 'users#estudiante' , as: 'estudiante'
  get  '/profesor/registrar',  to: 'users#registrar' , as: 'registrar'
  get  '/estudiante/cuestionario',  to: 'users#cuestionario' , as: 'cuestionario'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
