Rails.application.routes.draw do
  
  root 'site#home' 
        
  devise_for :students
  get 'students/profile', to: 'students#profile'
  
  
  devise_for :teachers
  get 'teachers/profile', to: 'teachers#profile'
  
    
  post '/search_sport', to: 'site#search' 
 
  get '/teachers/index', to: 'teachers#index', as: 'teachers'

  get '/teachers/:id/confirmed', to: 'teachers#show_confirmed', as: 'confirmed_appointments'

  get '/teachers/:id/pending', to: 'teachers#show_pending', as: 'pending_appointments'

  # get '/appointments/:id/change', to:'appointments#change', as: 'appointment_change'

  #post '/teachers/:id', to: 'students#show'

  # post '/student_profile/:id', to: 'students#confirm'

  # get '/sport_appointment/:id', to: 'appointments#show'
  # post '/appointments/:teacher_id', to:'appointments#create'
  
  resources :sports
  resources :appointments
  
  resources :students
end
