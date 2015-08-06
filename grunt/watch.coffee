module.exports =

  main:
    files: ['<%= srcDir %>/**/*.styl']
    tasks: ['stylus:main', 'copy:docsCss']

  docs:
    files: ['<%= docsSrcDir %>/**/*.hbs', '<%= docsSrcDir %>/**/*.yml']
    tasks: ['newer:assemble']

  docsAssets:
    files: ['<%= docsSrcDir %>/assets/**/*.*', '!<%= docsSrcDir %>/**/*.styl']
    tasks: ['newer:copy:docsAssets']

  docsStyles:
    files: ['<%= docsSrcDir %>/**/*.styl']
    tasks: ['stylus:docs']
