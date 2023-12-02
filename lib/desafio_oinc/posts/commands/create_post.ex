defmodule DesafioOinc.Posts.Commands.CreatePost do
  @moduledoc false
  defstruct [:post_id, :author_id, :category_id, :title, :body]
end
