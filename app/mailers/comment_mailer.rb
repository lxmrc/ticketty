class CommentMailer < ApplicationMailer
  def new_comment(comment, user)
    @comment = comment
    @user = user
    @ticket = comment.ticket
    @project = @ticket.project

    subject = "#{@project.name} - #{@ticket.name}"
    mail(to: user.email, subject: subject)
  end
end
