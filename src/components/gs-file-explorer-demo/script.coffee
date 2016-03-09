Polymer
  is: '#GRUNT_COMPONENT_NAME'
  
  listeners:
    'openFile': 'openFile'
    'removeFile': 'removeFile'
    'duplicateFile': 'duplicateFile'
    'renameFile': 'renameFile'

  attached: ->
    this.fileExplorer = this.$.explorer
    this.mirrorExplorer = this.$.mirrorExplorer
    
    index = {name : "index.html"}
    style = {name: "style.css"}
    script = {name: "script.js"}

    this.files = [index, style, script]

  removeFile: (polymerEvent)->
    this.splice('files', polymerEvent.detail.file.file, 1)