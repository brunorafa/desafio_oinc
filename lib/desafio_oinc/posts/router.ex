defmodule DesafioOinc.Posts.Router do
  use Commanded.Commands.Router

  alias DesafioOinc.Posts.Commands.CreatePost
  alias DesafioOinc.Posts.Aggregate

  dispatch(CreatePost, to: Aggregate, identity: :post_id)
end
