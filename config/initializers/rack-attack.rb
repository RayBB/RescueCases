# In config/initializers/rack-attack.rb
class Rack::Attack
  # your custom configuration...
  
	# Block requests from 68.200.90.50
	Rack::Attack.blacklist('block 68.200.90.50') do |req|
	  # Requests are blocked if the return value is truthy
	  '68.200.90.50' == req.ip
	end

end