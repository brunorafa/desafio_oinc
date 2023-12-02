defmodule DesafioOinc.Categories.Projector do
  use Commanded.Projections.Ecto,
    application: DesafioOinc.App,
    repo: DesafioOinc.Repo,
    name: "category_projection"

  alias DesafioOinc.Categories.Events.CategoryCreated
  alias DesafioOinc.Categories.Schemas.Category

  project(
    %CategoryCreated{name: name},
    _meta,
    fn multi ->
      category = Category.changeset(%{name: name})
      Ecto.Multi.insert(multi, :new_category, category)
    end
  )
end
