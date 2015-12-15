module MissionsHelper
	def check_link(link)
		if !link.empty?
			"Link"
		else
			""
		end
	end
	def did(finished)
		"done" if finished
	end
end
