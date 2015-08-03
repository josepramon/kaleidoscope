module.exports =

  fonts:
    expand:  true
    flatten: true
    src:     ['<%= libDir %>/bootstrap-stylus/fonts/*']
    dest:    '<%= buildDir %>/fonts/'
    filter:  'isFile'

  docsFonts:
    expand:  true
    flatten: true
    src:     ['<%= libDir %>/bootstrap-stylus/fonts/*']
    dest:    '<%= docsDir %>/assets/css/fonts/'
    filter:  'isFile'

  docsCss:
    expand:  true
    flatten: true
    src:     ['<%= buildDir %>/*.css']
    dest:    '<%= docsDir %>/assets/css/'
    filter:  'isFile'

  docsAssets:
    expand: true
    cwd:    '<%= docsSrcDir %>/assets'
    src:    ['**/*']
    dest:   '<%= docsDir %>/assets/'
    filter: 'isFile'
