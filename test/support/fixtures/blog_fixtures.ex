defmodule ElixirGraphql.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirGraphql.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> ElixirGraphql.Blog.create_post()

    post
  end
end
