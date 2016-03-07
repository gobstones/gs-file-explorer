Polymer
  is: '#GRUNT_COMPONENT_NAME'

  listeners:
    'contextmenu': 'openMenu'

  properties:
    data:
      type: {}
      value: {}

  attached: ->

  openMenu: (event)->
    
    handler = =>
      console.log "Cerrado"
      this.fire('closeGsContextMenu', this)
      document.removeEventListener 'mousedown', handler

    document.addEventListener 'mousedown', handler
    event.preventDefault()
    this.fire('openGsContextMenu', this)