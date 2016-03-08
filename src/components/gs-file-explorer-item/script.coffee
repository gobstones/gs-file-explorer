Polymer
  is: '#GRUNT_COMPONENT_NAME'

  listeners:
    'contextmenu': 'openMenu'

  properties:
    name:
      type: String

  attached: ->
  
  generateOptions:->
    if this.options then return
    self = this
    this.options = [
        name: 'Open'
        action: -> self.fire 'openFile', self
      ,  
        name: 'Remove'
        action: -> self.fire 'removeFile', self
      , 
        name: 'Duplicate'
        action: -> self.fire 'duplicateFile', self
      , 
        name: 'Rename'
        action: -> self.fire 'renameFile', self
    ]

  openMenu: (browser_event)->
    this.generateOptions()
    browser_event.preventDefault()
    this.fire('openGsContextMenu', 
      file:this
      browserEventX: browser_event.x
      browserEventY: browser_event.y
    )