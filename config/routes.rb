Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  }

resources :user do
	resources :relationships
  end

  resources :nails do
  	resource :favorites, only:[:create, :destroy]
  	resources :nail_comments,only:[:index,:show,:edit,:new,:destroy,:create]
  end

  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
