defmodule DesafioOinc.Posts.Aggregate do
  defstruct [:post_id, :author_id, :category_id, :title, :body]

  alias DesafioOinc.Posts.Events.PostCreated
  alias DesafioOinc.Posts.Commands.CreatePost
  # Public command API

  def execute(%__MODULE__{post_id: nil}, %CreatePost{
        post_id: post_id,
        author_id: author_id,
        category_id: category_id,
        title: title,
        body: body
      }) do
    %PostCreated{
      post_id: post_id,
      author_id: author_id,
      category_id: category_id,
      title: title,
      body: body
    }
  end

  # State mutators

  def apply(%__MODULE__{} = post, %PostCreated{} = event) do
    %PostCreated{author_id: author_id, name: name, bio: bio} = event

    %__MODULE__{post | author_id: author_id, name: name, bio: bio}
  end
end
