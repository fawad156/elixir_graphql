defmodule ElixirGraphqlWeb.Graphql.Types.Types do
  use Absinthe.Schema.Notation

  import_types(ElixirGraphqlWeb.Graphql.Types.PostTypes)
end
