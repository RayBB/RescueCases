class Mission < ActiveRecord::Base
	validates :location, :floor, :rescue_link, :presence => true


	validate :url_should_be_url
	validate :rescued_should_be_rescued

  	def url_should_be_url
    	errors.add(:rescue_link, "Not a valid URL Please upload to imgur or cloudfront. (This is to prevent spam)") if
    		!rescue_link.index('http')  == 0 #|| !rescue_link.include?('imgur.com/' || 'cloudfront.net/') 
  	end

  	def rescued_should_be_rescued
  		if rescued_link != ""
  			errors.add(:rescued_link, "Not a valid URL. Please upload to imgur or cloudfront. (This is to prevent spam)") if
    		!rescued_link.index('http')  == 0 # || !rescued_link.include?('imgur.com/' || 'cloudfront.net/')
  		end
    end

end
