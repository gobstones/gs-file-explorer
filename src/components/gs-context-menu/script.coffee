Polymer
  is: '#GRUNT_COMPONENT_NAME'

  properties:
    _options:
      type: []
      value: []
    toggleContextMenu:
      type: Boolean
      value: false

  addOptions: (options)->
    this._options = options

  showMenu:(offSetLeft, offSetTop) ->
    this.toggleContextMenu = true
    this.style.left = offSetLeft + 2 + "px"
    this.style.top = offSetTop + 2 + "px"

  hideMenu: ->
    this.toggleContextMenu = false
