module.exports = (grunt) ->

  # Autoloading for the grunt tasks, jitGrunt enables loading them on demand
  require('load-grunt-config') grunt,
    jitGrunt: true
    data:     grunt.file.readYAML 'grunt/config.yml'


  # Display the elapsed execution time of grunt tasks
  require('time-grunt') grunt
