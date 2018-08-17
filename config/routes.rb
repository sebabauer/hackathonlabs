Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  resources :ideas

  resources :idea_likes

  root to: "ideas#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
