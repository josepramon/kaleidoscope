module.exports = (grunt) ->
  config =
    srcDir:     'src'
    buildDir:   'dist'
    libDir:     'vendor'
    docsDir:    'doc'
    docsSrcDir: 'doc-src'
    banner: '/*! <%= package.name %> <%= package.version %> |
© <%= package.author %> - All rights reserved |
<%= package.homepage %> */\n'

  require('load-grunt-config') grunt,
    jitGrunt: true
    data:     config
