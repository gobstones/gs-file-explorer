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

  showMenu: ->
    # this.toggleOpacity = "showClass"
    this.toggleContextMenu = true

  hideMenu: ->
    # this.toggleOpacity = "hideClass"
    this.toggleContextMenu = false
