class Task
  constructor: (@name) ->
    @status = 'incomplete'
  complete: ->
    if @parent? and @parent.status isnt 'completed'  
      throw "Dependent task '#{@parent.name}' is not completed."
    @status = 'complete'
    true
  dependsOn: (@parent) ->  
    @parent.child = @  
    @status = 'dependent'

class TaskList  
  constructor: () ->  
    @tasks = []  
    @length = 0

root = exports ? window
root.Task = Task
root.TaskList = TaskList