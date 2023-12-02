defmodule DesafioOinc.Posts.Projector do
  use Commanded.Projections.Ecto,
    application: DesafioOinc.App,
    repo: DesafioOinc.Repo,
    name: "posts_projection"

  alias DesafioOinc.Posts.Events.PostCreated
  alias DesafioOinc.Posts.Schemas.Post

  project(
    %PostCreated{
      post_id: post_id,
      author_id: author_id,
      category_id: category_id,
      title: title,
      body: body
    },
    _meta,
    fn multi ->
      post =
        Post.changeset(%{
          post_id: post_id,
          author_id: author_id,
          category_id: category_id,
          title: title,
          body: body
        })

      Ecto.Multi.insert(multi, :new_post, post)
    end
  )
end
