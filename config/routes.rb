Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  jsonapi_resources :authors
  jsonapi_resources :courses
  jsonapi_resources :talents
end
