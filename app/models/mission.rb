class Mission < ActiveRecord::Base
	validates :location, :level, :rescue_link, :presence => true
end
