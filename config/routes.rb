Rails.application.routes.draw do
	namespace :api do 
		resources :collections
	end
end
