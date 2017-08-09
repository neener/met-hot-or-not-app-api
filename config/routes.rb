Rails.application.routes.draw do
	namespace :api do 
		resources :collections
		resources :metobjects
	end
end
