module MissionsHelper

	def check_link(link)
		if !link.nil? && !link.empty?
			"Link"
		else
			""
		end
	end

	def getStatus(label)

		if label == 2
			return "done";
		end

		if label == 1
			return "in-progress";
		end

		if label == 0
			return "";
		end
	end

	def getProgress(num)
		if num == 0
			return "Posted"
		end
		if num == 1
			return "In Progress"
		end
		if num == 2
			return "Finished"
		end
	end
end
