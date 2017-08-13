Rails.application.routes.draw do
	namespace :api do 
		resources :metobjects
	end
end
