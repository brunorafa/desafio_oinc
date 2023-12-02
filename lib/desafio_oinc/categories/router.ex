defmodule DesafioOinc.Categories.Router do
  use Commanded.Commands.Router

  alias DesafioOinc.Categories.Commands.CreateCategory
  alias DesafioOinc.Categories.Aggregate

  dispatch(CreateCategory, to: Aggregate, identity: :name)
end
