defmodule DesafioOinc.EventRouter do
  @moduledoc false
  use Commanded.Commands.CompositeRouter

  router(DesafioOinc.Posts.Router)
  router(DesafioOinc.Users.Router)
  router(DesafioOinc.Comments.Router)
  router(DesafioOinc.Categories.Router)
end
