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

  add: (task) ->  
    if typeof task is 'string'  
     @tasks.push new Task task   
    else   
      @tasks.push task  
    @length = @tasks.length

root = exports ? window
root.Task = Task
root.TaskList = TaskList