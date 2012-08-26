# Cakefile

{exec} = require "child_process"

REPORTER = "spec"

task "test", "run tests", ->
  exec "mocha 
    --compilers coffee:coffee-script
    --reporter #{REPORTER}
    --require coffee-script 
    --colors
  ", (err, output) ->
    throw err if err
    console.log output