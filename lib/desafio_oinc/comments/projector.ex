defmodule DesafioOinc.Comments.Projector do
  use Commanded.Projections.Ecto,
    application: DesafioOinc.App,
    repo: DesafioOinc.Repo,
    name: "comments_projection"

  alias DesafioOinc.Comments.Events.CommentCreated
  alias DesafioOinc.Comments.Schemas.Comment

  project(
    %CommentCreated{
      post_id: post_id,
      user_id: user_id,
      content: content
    },
    _meta,
    fn multi ->
      comment =
        Comment.changeset(%{
          post_id: post_id,
          user_id: user_id,
          content: content
        })

      Ecto.Multi.insert(multi, :new_comment, comment)
    end
  )
end
