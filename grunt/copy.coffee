module.exports =

  fonts:
    expand: true
    flatten: true
    src: [
      '<%= libDir %>/bootstrap-stylus/fonts/*',
    ]
    dest: '<%= buildDir %>/fonts/'
    filter: 'isFile'

  docsFonts:
    expand: true
    flatten: true
    src: [
      '<%= libDir %>/bootstrap-stylus/fonts/*',
    ]
    dest: '<%= docsDir %>/css/fonts/'
    filter: 'isFile'

  docsCss:
    expand: true
    flatten: true
    src: [
      '<%= buildDir %>/*.css',
    ]
    dest: '<%= docsDir %>/css/'
    filter: 'isFile'
