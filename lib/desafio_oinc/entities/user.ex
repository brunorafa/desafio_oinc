defmodule DesafioOinc.Entities.User do
  use Ecto.Schema

  alias DesafioOinc.Entities.Post

  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :bio, :string

    has_many :posts, Post, foreign_key: :author_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(attrs) do
    changeset(%__MODULE__{}, attrs)
  end

  @doc false
  def changeset(%__MODULE__{} = user, attrs) do
    user
    |> cast(attrs, [:name, :bio])
    |> validate_required([])
  end
end
