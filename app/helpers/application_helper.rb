module ApplicationHelper

	def project_image(project)
		if project.avatar_file_size == nil
			"missing.svg"
		else
			project.avatar
		end
	end

	
end
