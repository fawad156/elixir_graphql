defmodule ElixirGraphqlWeb.Schema do
  use Absinthe.Schema
  alias ElixirGraphqlWeb.Resolvers.Post
  import_types(ElixirGraphqlWeb.Graphql.Types.Types)

  query do
    field :get_post_by_id, :post do
      arg(:id, non_null(:id))

      resolve(&Post.get_post_by_id/3)
    end
  end

  mutation do
    field :create_post, :post do
      arg(:input, :post_input)

      resolve(&Post.create_post/3)
    end
  end

end
