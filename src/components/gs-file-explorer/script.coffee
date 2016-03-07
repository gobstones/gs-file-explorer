Polymer
  is: '#GRUNT_COMPONENT_NAME'

  properties:
    files:
      type: []
      value: []
  listeners:
    'openGsContextMenu': 'displayOptions'
    'closeGsContextMenu': 'closeOptions'

  addFile: (file) ->
    this.push('files', file)

  attached: ->
    this.contextMenu = this.$.optionsMenu

  displayOptions:(event)->
    this.contextMenu.addOptions(event.detail.data.options)
    this.contextMenu.showMenu()

  closeOptions:(event)->
    this.contextMenu.hideMenu()
