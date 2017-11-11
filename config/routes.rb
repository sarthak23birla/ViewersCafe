Rails.application.routes.draw do
  resources :videos do
  	collection do 
  		get :disliked
 		get :liked
 		get :myvideo
 	  	get :tag
 	end
 	member do
  		resources :comments, only: :create
  	end
  end
  devise_for :users ,:controllers => { :omniauth_callbacks => "omniauth_callbacks" } 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'videos#index'
end
