defmodule DesafioOinc.Entities.Comment do
  @moduledoc false
  use Ecto.Schema

  alias DesafioOinc.Entities.Post
  alias DesafioOinc.Entities.User

  import Ecto.Changeset

  schema "comments" do
    belongs_to :user, User
    belongs_to :post, Post

    field :content, :string
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(attrs) do
    changeset(%__MODULE__{}, attrs)
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:content, :user_id, :post_id])
    |> validate_required([])
    |> foreign_key_constraint(:user_id)
    |> foreign_key_constraint(:post_id)
  end
end
