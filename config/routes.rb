# Rails.application.routes.draw do
#   post "/graphql", to: "graphql#execute"
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end

# Rails.application.routes.draw do
#   if Rails.env.development?
#     mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
#   end
#   post "/graphql", to: "graphql#execute"
# end

# above commented out, trying something else per https://medium.com/@DrawandCode/building-a-graphql-api-in-rails-part-start-coding-8b1de6d75041
Rails.application.routes.draw do
  # ...
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # ...
end
