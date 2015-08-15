module.exports =

  fonts:
    expand:  true
    flatten: true
    src:     ['<%= libDir %>/bootstrap-stylus/fonts/*', '<%= libDir %>/font-awesome-stylus/fonts/*']
    dest:    '<%= buildDir %>/fonts/'
    filter:  'isFile'

  docsFonts:
    expand:  true
    flatten: true
    src:     ['<%= libDir %>/bootstrap-stylus/fonts/*', '<%= libDir %>/font-awesome-stylus/fonts/*']
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
    src:    ['**/*', '!**/stylus/**']
    dest:   '<%= docsDir %>/assets/'
    filter: 'isFile'
