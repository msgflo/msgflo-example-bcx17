noflo = require 'noflo'

# @runtime noflo-browser

exports.getComponent = ->
  c = new noflo.Component
  c.inPorts.add 'in',
    datatype: 'number'
  c.outPorts.add 'out',
    datatype: 'number'
    
  c.process (input, output) ->
    val = input.getData 'in'
    output.sendDone
      out: Math.abs val
