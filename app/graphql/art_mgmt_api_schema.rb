# WALK THRUS
# https://medium.com/@DrawandCode/building-a-graphql-api-in-rails-part-start-coding-8b1de6d75041
# https://github.com/rmosolgo/graphiql-rails/issues/75
# https://mattboldt.com/2019/01/07/rails-and-graphql/


class ArtMgmtApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections
end
