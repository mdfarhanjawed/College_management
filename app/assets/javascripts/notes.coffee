jQuery(document).on 'turbolink:load', ->
  comments = $('#comments')
  if comments.length > 0
    App.global_chat = App.cable.subscriptions.create {
      channel: "NotesChannel"
      note_id: comments.data('note_id')
    },
    connected: ->
    disconnected: ->
    recieved: (data) ->
      comments.append data['comment']
    send_comment: (comment, note_id) ->
      @perform 'send_comment', comment: comment, note_id: note_id
  $('#new_comment').submit (e) ->
    $this = $(this)
    textarea = $this.find('#comment_content')
    if $.trim(textarea).val()).length > 1
      App.global_chat.send_comment textarea.val(),
      comments.data('note-id')
      textarea.val('')
    e.preventDefault()
    return false
