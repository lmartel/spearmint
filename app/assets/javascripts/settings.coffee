# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@checkAll = (self) ->
  es = document.getElementsByClassName('reenable-ignored')
  if self.checked
    e.checked = true for e in es
  else
    e.checked = false for e in es