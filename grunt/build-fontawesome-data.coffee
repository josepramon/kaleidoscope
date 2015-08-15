fs = require 'fs'

# Custom task, creates a yml file with all the Font Awesome classes
# Based on the bs-glyphicons-data-generator.js from Bootstrap
# https://github.com/twbs/bootstrap/blob/master/grunt/bs-glyphicons-data-generator.js
module.exports = (grunt) ->

  iconsFile    = fs.readFileSync('vendor/font-awesome-stylus/stylus/icons.styl', 'utf8')
  iconsYml     = 'doc-src/data/fontawesome-icons.yml'

  lines        = iconsFile.split('\n')
  iconRegex    = /^\.\{\$fa-css-prefix\}-([a-zA-Z0-9-]+):before/
  customPrefix = 'icon-'

  data = "# This file is generated via Grunt task. **Do not edit directly.**\n
# See the \'build-fontawesome-data\' task in Gruntfile.coffee.\n\n"

  for line in lines
    match = line.match iconRegex

    unless match is null
      data += '- ' + customPrefix + match[1] + '\n'


  try
    fs.writeFileSync iconsYml, data
  catch err
    grunt.fail.warn err
