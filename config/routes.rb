Rails.application.routes.draw do
  resources :examples
  root 'example#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
