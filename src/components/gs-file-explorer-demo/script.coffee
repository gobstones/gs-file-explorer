Polymer
  is: '#GRUNT_COMPONENT_NAME'
  
  listeners:
    'openFile': 'openFile'
    'removeFile': 'removeFile'
    'duplicateFile': 'duplicateFile'
    'renameFile': 'renameFile'

  attached: ->
    this.fileExplorer = this.$.explorer

    index = {name : "index.html"}
    style = {name: "style.css"}
    script = {name: "script.js"}

    this.fileExplorer.addFile(index)
    this.fileExplorer.addFile(style)
    this.fileExplorer.addFile(script)
