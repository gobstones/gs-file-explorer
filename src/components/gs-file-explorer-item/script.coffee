Polymer
  is: '#GRUNT_COMPONENT_NAME'

  listeners:
    'contextmenu': 'openMenu'
    'tap' : 'openFile'
  properties:
    file:
      type: {}
      value: {}

  generateOptions:->
    if this.options then return
    self = this
    this.options = [
        name: 'Open'
        action: -> self.fire 'openFile', file: self.file
      ,  
        name: 'Remove'
        action: -> self.fire 'removeFile', file: self.file
      , 
        name: 'Duplicate'
        action: -> self.fire 'duplicateFile', file: self.file
      , 
        name: 'Rename'
        action: -> self.fire 'renameFile', file: self.file
    ]

  openFile: ->
    this.fire 'openFile', this


  openMenu: (browser_event)->
    this.generateOptions()
    browser_event.preventDefault()
    this.fire('openGsContextMenu', 
      file:this
      browserEventX: browser_event.x
      browserEventY: browser_event.y
    )
