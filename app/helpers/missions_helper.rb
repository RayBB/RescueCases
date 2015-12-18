module MissionsHelper

	def check_link(link)
		if !link.nil? && !link.empty?
			"Link"
		else
			""
		end
	end

	def did(finished)
		"done" if finished
	end
end
