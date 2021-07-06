Rails.application.routes.draw do
  get 'dogs/most_popular', to: "dogs#most_popular"
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
