class Mission < ActiveRecord::Base
	validates :location, :floor, :rescue_link, :presence => true
end
