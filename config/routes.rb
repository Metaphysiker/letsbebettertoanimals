Rails.application.routes.draw do
  resources :lessions
  root 'static_pages#welcome'

  get '/activism', to: "static_pages#activism", as: "activism"
end
