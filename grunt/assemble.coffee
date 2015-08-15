module.exports =
  options:
    plugins:   []

  docs:
    options:
      partials:  '<%= docsSrcDir %>/partials/**/*.hbs'
      layoutdir: '<%= docsSrcDir %>/layouts'
      layout:    'default.hbs'
      data:      ['<%= docsSrcDir %>/data/**/*.{json,yml}', 'package.json', 'bower.json']
    cwd:         '<%= docsSrcDir %>/views/'
    src:         '**/*.hbs'
    dest:        '<%= docsDir %>'
    expand:      true
