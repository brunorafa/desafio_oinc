defmodule DesafioOinc.Users.Aggregate do
  defstruct [:post_id, :author_id, :category_id, :title, :body]

  alias DesafioOinc.Users.Events.UserCreated
  alias DesafioOinc.Users.Commands.CreateUser
  # Public command API

  def execute(%__MODULE__{post_id: nil}, %CreateUser{
        user_id: post_id,
        name: name,
        bio: bio
      }) do
    %UserCreated{user_id: post_id, name: name, bio: bio}
  end
end
