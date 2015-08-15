module.exports =
  options:
    port:     8000
    ui:
      port:   8001
      weinre:
        port: 8002

  dev:
    bsFiles:
      src:       ['<%= docsDir %>/**/*']
    options:
      watchTask: true
      server:    '<%= docsDir %>'
