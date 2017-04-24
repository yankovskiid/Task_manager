$(document).on 'turbolinks:load', ->
  $('.sortable').nestedSortable
    handle: 'div'
    items: 'li'
    toleranceElement: '> div'
  $("[type='checkbox']").each ->
    $(this).change ->
      console.log(this.id)
      $.ajax
        url: '/tasks/' + this.id
        type: 'PATCH'
        data: 'checked=' + this.checked
        success: (result) ->
          console.log(result)
