chai = require 'chai'
expect = chai.expect
chai.should()

{TaskList, Task} = require '../src/task'
describe 'Task', ->
  task1 = task2 = null
  it 'should have a name', ->
    task1 = new Task 'feed the cat'
    task1.name.should.equal 'feed the cat'
  it 'should be initially incomplete', ->
    task1.status.should.equal 'incomplete'
  it 'should be able to be completed', ->
    task1.complete().should.be.true
    task1.status.should.equal 'complete'
