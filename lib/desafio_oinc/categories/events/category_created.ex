defmodule DesafioOinc.Categories.Events.CategoryCreated do
  @moduledoc false
  @derive Jason.Encoder
  defstruct [:category_id, :name]
end
