#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require twitter/bootstrap
#= require sync
#= require_tree .


class Sync.UserListRow extends Sync.View

  beforeUpdate: (html, data) ->
    @$el.fadeOut 'slow', => @update(html)

  afterUpdate: -> @$el.fadeIn('slow')

  beforeRemove: -> @$el.fadeOut 'slow', => @remove()

class Sync.TodoListRow extends Sync.View

  beforeInsert: ($el, data) ->
    console.log "beforeInsert"
    console.log $el
    console.log data
    console.log @$el
    console.log @
    @insert($el)

  afterUpdate: ->
    console.log "afterInsert"
