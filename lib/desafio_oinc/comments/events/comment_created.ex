defmodule DesafioOinc.Comments.Events.CommentCreated do
  @moduledoc false
  @derive Jason.Encoder
  defstruct [:comment_id, :content, :user_id, :post_id]
end
