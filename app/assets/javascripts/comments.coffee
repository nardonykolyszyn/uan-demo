$(document).on "ajax:success", "form#comments-form", (ev, data)->
  $(this).find("textarea").val("")
  $('#user-name').append("#{data.user.name}")
  $('#comment-date').append("#{data.created_at}")
  $("#comment-body").append("#{data.content}")
$(document).on "ajax:error", "form#comments-form", (ev, data) ->
  alert("Error al comentar")
