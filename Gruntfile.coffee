module.exports = ->
  @initConfig
    pkg: @file.readJSON 'package.json'

    # Browser build of NoFlo
    noflo_browser:
      options:
        graph: 'msgflo-example-bcx17/Theremin'
      build:
        files:
          'browser/noflo.js': ['package.json']

  @loadNpmTasks 'grunt-noflo-browser'

  @registerTask 'build', [
    'noflo_browser'
  ]
