class CommentBroadcastJob < ApplicationJob
  queue_as :default

  def perform(comment)
    ActionCable.server.broadcast "notes_#{comment.note.id}_channel", comment: render_comment(comment)
  end

  private

  def render_comment(comment)
    CommentController.render partial: 'comments/comment', locals: { comment: comment }
  end
end