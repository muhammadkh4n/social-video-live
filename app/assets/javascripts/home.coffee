# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  console.log "DOM READY"
  $(document).on "change", "#upload-video", (event) ->
    console.log("FILE CHANGED");
    source = $("#video")
    source[0].src = URL.createObjectURL(this.files[0])
    source.parent()[0].load()