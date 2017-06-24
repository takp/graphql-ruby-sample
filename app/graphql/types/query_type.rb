Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :video do
    type Types::VideoType
    argument :id, !types.ID
    description "Find video by ID"
    resolve ->(obj, args, ctx) { Video.find(args["id"]) }
  end
end
