Polymer 
    is: '#GRUNT_COMPONENT_NAME'

    properties:
      files:
        type: []
        value: []

    listeners:
      'openGsContextMenu': 'displayOptions'
      'processOption': 'makeAction'

    makeAction: (polymerEvent)->
      option = polymerEvent.detail.option
      option.action()
      this.closeOptions()

    created: ->
      this.closeOptions = ()=>
        this.contextMenu.hideMenu()
        document.removeEventListener 'mousedown', this.closeOptions

    attached: ->
      this.contextMenu = this.$.optionsMenu

    displayOptions:(polymerEvent)->
      this.contextMenu.addOptions(polymerEvent.detail.file.options)
      this.contextMenu.showMenu(polymerEvent.detail.browserEventX, polymerEvent.detail.browserEventY)
      document.addEventListener 'mousedown', this.closeOptions
      polymerEvent.preventDefault()
