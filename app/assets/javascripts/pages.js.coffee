$ ->
  editor = ace.edit("editor")
  textarea = $('#editor_text').hide()
  Mode = require('ace/mode/html').Mode

  editor.getSession().setMode(new Mode())
  editor.setTheme("ace/theme/monokai")
  editor.getShowInvisibles(true)
  editor.getHighlightActiveLine(false)
  editor.getSession().setValue(textarea.val())
  editor.getSession().on 'change', () ->
    textarea.val(editor.getSession().getValue())
  