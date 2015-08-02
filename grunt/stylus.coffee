module.exports =

  main:
    options:
      banner:   '<%= banner %>'
      linenos:  false
      compress: true
      firebug:  false
      use: [
        () -> require('autoprefixer-stylus')
          browsers: ['last 2 versions', 'ie 9']
        () -> require('csso-stylus') restructure: false
      ]
    files: [
      '<%= buildDir %>/main.css': '<%= srcDir %>/index.styl'
    ]
