defmodule ElixirGraphqlWeb.Resolvers.Post do
  alias ElixirGraphql.Blog

  def get_post_by_id(_entity, %{id: id}, _context) do
    {:ok, Blog.get_post!(id)}
  end

  def create_post(_entity, %{input: post_params}, _context) do
    Blog.create_post(post_params)
  end
end
