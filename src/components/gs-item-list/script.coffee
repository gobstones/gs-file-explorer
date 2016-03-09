Polymer
  is: '#GRUNT_COMPONENT_NAME'

  properties:
    option: 
      type: {}
      value: {}

  listeners:
    'mousedown': 'avoidPropagation'

  avoidPropagation: (browserEvent)->
    browserEvent.preventDefault()
    browserEvent.stopPropagation()

  make_action: ->
    this.fire('processOption', option: this.option)
