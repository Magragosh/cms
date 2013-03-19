      var editor = ace.edit("editor");
      var textarea = $('#editor_text').hide();
      var Mode = require('ace/mode/html').Mode;
      editor.getSession().setMode(new Mode());
      editor.setTheme("ace/theme/monokai");
      editor.getShowInvisibles(true)
      editor.getHighlightActiveLine(false)
      editor.getSession().setValue(textarea.val());
      editor.getSession().on('change', function(){
        textarea.val(editor.getSession().getValue());
      });
  