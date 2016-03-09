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
    
    index = {name : "index.html", content : "content"}
    style = {name: "style.css", content : "content"}
    script = {name: "script.js", content : "content"}

    this.files = [index, style, script]

  removeFile: (polymerEvent)->
    this.splice('files', polymerEvent.detail.file, 1)

  duplicateFile: (polymerEvent)->
    newFile = {name: polymerEvent.detail.file.name + "(2)", content: polymerEvent.detail.file.content}
    
    this.push('files', newFile)

  