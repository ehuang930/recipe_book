Rails.application.routes.draw do
  devise_for :users
	get 'explore' => "homepage#recipes_by_course"


  resources :courses
  resources :recipes
  root 'homepage#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
