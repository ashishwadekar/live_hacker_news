defmodule LiveHackerNews.PostTest do
  use LiveHackerNews.DataCase

  alias LiveHackerNews.Post

  describe "links" do
    alias LiveHackerNews.Post.Link

    @valid_attrs %{
      title: "some title",
      url: "some url",
      user: "some user",
      website: "some website"
    }
    @update_attrs %{
      title: "some updated title",
      url: "some updated url",
      user: "some updated user",
      website: "some updated website"
    }
    @invalid_attrs %{title: nil, url: nil, user: nil, website: nil}

    def link_fixture(attrs \\ %{}) do
      {:ok, link} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Post.create_link()

      link
    end

    test "list_links/0 returns all links" do
      link = link_fixture()
      assert Post.list_links() == [link]
    end

    test "get_link!/1 returns the link with given id" do
      link = link_fixture()
      assert Post.get_link!(link.id) == link
    end

    test "create_link/1 with valid data creates a link" do
      assert {:ok, %Link{} = link} = Post.create_link(@valid_attrs)
      assert link.title == "some title"
      assert link.url == "some url"
      assert link.user == "some user"
      assert link.website == "some website"
    end

    test "create_link/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Post.create_link(@invalid_attrs)
    end

    test "update_link/2 with valid data updates the link" do
      link = link_fixture()
      assert {:ok, %Link{} = link} = Post.update_link(link, @update_attrs)
      assert link.title == "some updated title"
      assert link.url == "some updated url"
      assert link.user == "some updated user"
      assert link.website == "some updated website"
    end

    test "update_link/2 with invalid data returns error changeset" do
      link = link_fixture()
      assert {:error, %Ecto.Changeset{}} = Post.update_link(link, @invalid_attrs)
      assert link == Post.get_link!(link.id)
    end

    test "delete_link/1 deletes the link" do
      link = link_fixture()
      assert {:ok, %Link{}} = Post.delete_link(link)
      assert_raise Ecto.NoResultsError, fn -> Post.get_link!(link.id) end
    end

    test "change_link/1 returns a link changeset" do
      link = link_fixture()
      assert %Ecto.Changeset{} = Post.change_link(link)
    end
  end
end
