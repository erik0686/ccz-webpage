class MaterialTable

  display: ->
    $(".add-material").on 'click', (e) ->
      $(".materials-table").show()
      $(".close-material-modal").on 'click', (e) ->
      	$(".materials-table").hide()
      
ready = ->
  new MaterialTable().display()

$(document).ready(ready)
$(document).on('turbolinks:load', ready)