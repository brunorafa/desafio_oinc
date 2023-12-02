defmodule DesafioOinc.Posts.Events.PostCreated do
  @moduledoc false
  @derive Jason.Encoder
  defstruct [:post_id, :author_id, :category_id, :title, :body]
end
