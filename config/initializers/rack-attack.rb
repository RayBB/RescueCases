# In config/initializers/rack-attack.rb
class Rack::Attack
  # your custom configuration...
  
	# Block requests from 64.229.51.6 
	Rack::Attack.blacklist('block 64.229.51.6 ') do |req|
	  # Blocks Hitler Guy
	  '64.229.51.6 ' == req.ip
	end

end