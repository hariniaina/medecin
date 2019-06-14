Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :premia
  resources :appoitments
  resources :doctors
  resources :patients
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  get '/profildoctor/:id', to: 'home#showdoctor' , as: 'profildoctor'
  get '/profilpatient/:id', to: 'home#showpatient' , as: 'profilpatient'
  get  'home/doc'
  get 'home/connecter'
  get 'log',to:'home#page'
  root 'homes#index'
  resources :conversations do
    resources :messages
  end

  get '/demande/:id', to: 'home#demande', as: 'demande'
  get '/accept/:id', to: 'home#accept', as: 'accept'

  resources :posts do
    post 'comments', to: 'comments#create'
  end

  get '/dentiste', to: 'home#dentiste'
  get '/generaliste', to: 'home#generaliste'
  get '/cardiologue', to: 'home#cardiologue'
  get '/dermatologue', to: 'home#dermatologue'
  get '/gynecologue', to: 'home#gynecologue'
  get '/neurologue', to: 'home#neurologue'
  get '/ophtamologue', to: 'home#ophtamologue'
  get '/orl', to: 'home#orl'
  get '/pediatre', to: 'home#pediatre'
  get '/sagefemme', to: 'home#sagefemme'
  get '/stomatologue', to: 'home#stomatologue'
  get '/kinesitherapeute', to: 'home#kinesitherapeute'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/valide',  to: "appoitments#validates"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

