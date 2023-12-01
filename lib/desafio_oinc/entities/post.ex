defmodule DesafioOinc.Entities.Post do
  @moduledoc false
  use Ecto.Schema

  alias DesafioOinc.Entities.Category
  alias DesafioOinc.Entities.Comment
  alias DesafioOinc.Entities.User

  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :body, :string

    has_many :comments, Comment
    belongs_to :author, User
    belongs_to :category, Category

    has_many :comments_users, through: [:comments, :user]
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(attrs) do
    changeset(%__MODULE__{}, attrs)
  end

  @doc false
  def changeset(%__MODULE__{} = post, attrs) do
    post
    |> cast(attrs, [:title, :body, :author_id, :category_id])
    |> validate_required([])
    |> foreign_key_constraint(:author_id)
    |> foreign_key_constraint(:category_id)
  end
end
