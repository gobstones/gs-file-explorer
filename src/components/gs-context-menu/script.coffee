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

  showMenu: ->
    this.toggleContextMenu = true

  hideMenu: ->
    this.toggleContextMenu = false

  make_action: (nosequemierdaevent)->
    this.fire 'processOption', file:nosequemierdaevent.target.item
