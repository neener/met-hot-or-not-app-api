class Api::MetobjectsController < ApplicationController
	
	def index
		@metobjects = MetObject.where('1=1').order("RANDOM()").limit(50)
		render json: @metobjects
	end

end