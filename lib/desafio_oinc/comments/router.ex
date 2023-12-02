defmodule DesafioOinc.Comments.Router do
  use Commanded.Commands.Router

  alias DesafioOinc.Comments.Commands.CreateComment
  alias DesafioOinc.Comments.Comments.Aggregate

  dispatch(CreateComment, to: Aggregate, identity: :post_id)
end
