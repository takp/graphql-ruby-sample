GraphqlRubySampleSchema = GraphQL::Schema.define do
  query(Types::QueryType)
  mutation Types::MutationType
  # mutation Mutations::Video
end
