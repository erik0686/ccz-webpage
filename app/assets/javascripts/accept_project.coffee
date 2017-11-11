$ ->
 $(document).on 'click', '.button-action-accept', (evt) ->
 	debugger
  $.ajax 'change_status2',
    type: 'PATCH'
    dataType: 'script'
    data: { 
      project: $(this).data("project")
      project_id: $(this).data("project").id
  	}