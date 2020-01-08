Rails.application.routes.draw do
  root 'static_pages#welcome'

  get '/activism', to: "static_pages#activism", as: "activism"
end
