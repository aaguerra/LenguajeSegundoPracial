Rails.application.routes.draw do
  
  root 'static_pages#home' # asi se setea la pagina de inicio
  get 'static_pages/home'

  get 'static_pages/help'
  
  get  'static_pages/about'
  get  'static_pages/contact'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
