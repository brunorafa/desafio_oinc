defmodule DesafioOinc.Comments.Aggregate do
  defstruct [:comment_id, :content, :user_id, :post_id]

  alias DesafioOinc.Comments.Events.CommentCreated
  alias DesafioOinc.Comments.Commands.CreateComment
  # Public command API

  def execute(%__MODULE__{comment_id: nil}, %CreateComment{
        post_id: post_id,
        user_id: user_id,
        content: content
      }) do
    %CommentCreated{
      post_id: post_id,
      user_id: user_id,
      content: content
    }
  end
end
