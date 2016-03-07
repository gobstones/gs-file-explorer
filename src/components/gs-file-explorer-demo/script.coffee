Polymer
  is: '#GRUNT_COMPONENT_NAME'
  
  attached: ->
    this.fileExplorer = this.$.explorer
    _options = [
      {name: "Open", action:"abrir"}, 
      {name: "Remove", action:"borrar"}, 
      {name: "Open in new Tab", action:"abrir"}
    ]
    file = {name : "index.txt", options : _options} 

    this.fileExplorer.addFile(file)