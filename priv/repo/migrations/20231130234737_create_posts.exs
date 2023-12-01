defmodule DesafioOinc.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string, null: false
      add :body, :string, null: false

      add :author_id, references(:users), null: false
      add :category_id, references(:categories), null: false

      timestamps(type: :utc_datetime)
    end

    create index(:posts, [:author_id])
  end
end
