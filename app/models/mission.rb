class Mission < ActiveRecord::Base
	validates :location, :floor, :rescue_link, :presence => true


	validate :url_should_be_url

  	def url_should_be_url
    	errors.add(:rescue_link, "Not a valid URL") if
    		!rescue_link.include?('http' || 'https') || !rescue_link.include?('imgur.com/' || 'cloudfront.net/') || !rescue_link.index('http')  == 0
  	end
end
