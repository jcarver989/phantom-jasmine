#!/usr/local/bin/phantomjs

# Runs a Jasmine Suite from an html page
# @page is a PhantomJs page object
# @exit_func is the function to call in order to exit the script

class PhantomJasmineRunner
  constructor: (@page, @exit_func = phantom.exit) ->
    @tries = 0
    @max_tries = 10

  init: ->
    setTimeout (=>
      @inc_tries()
      @exit_if_jasmine_done()
    ), 100

  get_status: -> @page.evaluate(-> console_reporter.status)

  exit_if_jasmine_done: ->
    switch @get_status()
      when "success" then @exit_func 0
      when "fail"    then @exit_func 1
      else
  
  inc_tries: ->
    @tries += 1
    @exit_func 1 if @tries > @max_tries

# Script Begin
if phantom.args.length == 0
  console.log "Need a url as the argument"
  phantom.exit 1

page = new WebPage()
# Don't supress console output
page.onConsoleMessage = (msg) -> console.log msg

address = phantom.args[0]

page.open address, (status) ->
  if status != "success"
    console.log "can't load the address!"
    phantom.exit 1

  runner = new PhantomJasmineRunner(page)
  runner.init()

