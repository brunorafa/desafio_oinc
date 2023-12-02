defmodule DesafioOinc.Users.Router do
  use Commanded.Commands.Router

  alias DesafioOinc.Users.Commands.CreateUser
  alias DesafioOinc.Users.Aggregate

  dispatch(CreateUser, to: Aggregate, identity: :user_id)
end
