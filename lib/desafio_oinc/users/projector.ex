defmodule DesafioOinc.Users.Projector do
  use Commanded.Projections.Ecto,
    application: DesafioOinc.App,
    repo: DesafioOinc.Repo,
    name: "post_projection"

  alias DesafioOinc.Users.Events.UserCreated
  alias DesafioOinc.Users.Schemas.User

  project(
    %UserCreated{
      name: name,
      bio: bio
    },
    _meta,
    fn multi ->
      user = User.changeset(%{name: name, bio: bio})
      Ecto.Multi.insert(multi, :new_user, user)
    end
  )
end
