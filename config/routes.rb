Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
	resources :albums do
		resources :photos do
			resources :comments
		end
	end
  root to: "homes#index"
end
