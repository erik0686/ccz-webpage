module ApplicationHelper

	def project_image(project)
		if project.avatar_file_size == nil
			"missing.svg"
		else
			project.avatar
		end
	end

	def link_to_add_field(name, form, association, css_class, element)
    new_field = form.object.send(association).klass.new
    id = new_field.object_id
    fields = form.simple_fields_for(association, new_field, child_index: id) do |builder|
      render(association.to_s.singularize, form: builder)
    end

    link_to name, "#", class: css_class, data: { id: id, fields: fields.delete("\n", ""), element: element }
  end
end
