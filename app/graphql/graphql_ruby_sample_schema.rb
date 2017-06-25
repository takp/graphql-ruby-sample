GraphqlRubySampleSchema = GraphQL::Schema.define do
  query(Types::QueryType)
  mutation Mutations::Video
end
