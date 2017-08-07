class MetObject < ApplicationRecord

	require 'net/http'

	def self.get_image_url(object_id)
		begin
			uri = URI("http://www.metmuseum.org/api/Collection/additionalImages?crdId=#{object_id}")
			res = Net::HTTP.get_response(uri)
			body = JSON.parse res.body
			body['results'][0]['webImageUrl']
		rescue => e
			puts e.message
			nil
		end
	end
	
end
