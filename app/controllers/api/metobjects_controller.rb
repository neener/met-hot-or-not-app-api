class Api::MetobjectsController < ApplicationController
	
	def index
		@metobjects = MetObject.where('1=1').order("RANDOM()").limit(50)
		#@metobjects = MetObject.find(rand(1..MetObject.count))
		render json: @metobjects
	end

end