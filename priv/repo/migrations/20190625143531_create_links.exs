defmodule LiveHackerNews.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links) do
      add :title, :string, null: false
      add :url, :string, null: false
      add :website, :string, null: false
      add :user, :string, null: false
      add :upvotes, :int, default: 0

      timestamps()
    end
  end
end
