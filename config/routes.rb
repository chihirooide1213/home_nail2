Rails.application.routes.draw do
  devise_for :users
  get 'nail_comments/index'
  get 'nail_comments/show'
  get 'nail_comments/edit'
  get 'nails/index'
  get 'nails/show'
  get 'nails/edit'
  root 'home#top'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
