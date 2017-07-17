module.exports = (grunt) ->
  grunt.loadNpmTasks("grunt-sass")
  grunt.loadNpmTasks("grunt-contrib-watch")

  APP_DIR = '.'
  TMP_DIR = '.'
  DEV_DIR = '.'
  DST_DIR = '.'
  NPM_DIR   = 'node_modules'


  grunt.initConfig

    sass:
      app:
        options:
            includePaths: [
              "#{APP_DIR}"
              "#{NPM_DIR}/uikit/src/scss"
            ]
        files:
            "#{DEV_DIR}/style.css": "#{APP_DIR}/style.sass"

    watch:
      sass:
        files: ["style.sass", "font.scss"]
        tasks: ["sass"]
        options:
          spawn: no
          livereload: yes

  grunt.registerTask "default", ["sass"]
