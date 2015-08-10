module.exports =
  options:
    compress: true
    use: [
      () -> require('autoprefixer-stylus') browsers: ['last 2 versions', 'ie 9']
      () -> require('csso-stylus') restructure: false
    ]

  main:
    options:
      banner: '<%= banner %>'
    files:    [ '<%= buildDir %>/tesserae.css': '<%= srcDir %>/index.styl' ]

  docs:
    files:    [ '<%= docsDir %>/assets/css/docs.css': '<%= docsSrcDir %>/assets/stylus/index.styl' ]
