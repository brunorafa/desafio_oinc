defmodule DesafioOinc.Categories.Aggregate do
  defstruct [:category_id, :name]

  alias DesafioOinc.Categories.Events.CategoryCreated
  alias DesafioOinc.Categories.Commands.CreateCategory
  # Public command API

  def execute(
        %__MODULE__{category_id: nil},
        %CreateCategory{name: name}
      ) do
    %CategoryCreated{name: name}
  end
end
