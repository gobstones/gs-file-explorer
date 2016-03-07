Polymer 
    is: '#GRUNT_COMPONENT_NAME'

    properties:
      files:
        type: []
        value: []

    listeners:
      'openGsContextMenu': 'displayOptions'
      'processOption': 'makeAction'

    makeAction: (polymer_event)->
      option = polymer_event.detail.file
      option.action()
      this.closeOptions()

    created: ->
      this.closeOptions = ()=>
        this.contextMenu.hideMenu()
        document.removeEventListener 'mousedown', this.closeOptions

    addFile: (file) ->
      this.push('files', file)

    attached: ->
      this.contextMenu = this.$.optionsMenu

    displayOptions:(polymer_event)->
      this.contextMenu.addOptions(polymer_event.detail.file.options)
      this.contextMenu.showMenu()
      document.addEventListener 'mousedown', this.closeOptions
      polymer_event.preventDefault()
