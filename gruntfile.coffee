module.exports = (grunt) ->

  # Autoloading for the grunt tasks, jitGrunt enables loading them on demand
  require('load-grunt-config') grunt,
    jitGrunt: true
    data:     grunt.file.readYAML 'grunt/config.yml'


  # Display the elapsed execution time of grunt tasks
  require('time-grunt') grunt


  # Custom task, creates a yml file with all the Font Awesome classes
  faIconDataGenerator = require './grunt/build-fontawesome-data'

  grunt.registerTask 'build-fontawesome-data', () ->
    faIconDataGenerator.call this, grunt
