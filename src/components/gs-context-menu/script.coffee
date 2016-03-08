Polymer
  is: '#GRUNT_COMPONENT_NAME'

  properties:
    _options:
      type: []
      value: []
    toggleContextMenu:
      type: Boolean
      value: false

  listeners:
    'mousedown': 'avoidPropagation'

  avoidPropagation: (browserEvent)->
    browserEvent.preventDefault()
    browserEvent.stopPropagation()

  addOptions: (options)->
    this._options = options

  showMenu:(offSetLeft, offSetTop) ->
    this.toggleContextMenu = true
    this.style.left = offSetLeft + "px"
    this.style.top = offSetTop + "px"

  hideMenu: ->
    this.toggleContextMenu = false

  make_action: (nosequemierdaevent)->
    this.fire 'processOption', file:nosequemierdaevent.target.item
