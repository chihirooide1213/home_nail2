Rails.application.routes.draw do
  devise_for :users

resources :users do
	resources :relationships
  end

  resources :nails do
  	resource :favorites, only:[:create, :destroy]
  	resources :nail_comments,only:[:index,:show,:edit]
  end

  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
