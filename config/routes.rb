Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  as :user do
      get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
      patch 'users' => 'devise/registrations#update', :as => 'user_registration'            
  end
  resources :sales
  resources :people
  resources :companies
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
end
