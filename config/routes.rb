Rails.application.routes.draw do
  devise_for :users
  resources :sales
  resources :people
  resources :companies
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
end
