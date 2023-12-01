defmodule DesafioOinc.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :string

      add :user_id, references(:users), null: false
      add :post_id, references(:posts), null: false

      timestamps(type: :utc_datetime)
    end
  end
end
