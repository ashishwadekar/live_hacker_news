defmodule LiveHackerNews.Post.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do
    field :title, :string
    field :url, :string
    field :user, :string
    field :website, :string
    field :upvotes, :integer

    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:title, :url, :website, :user, :upvotes])
    |> validate_required([:title, :url, :website, :user, :upvotes])
  end
end
