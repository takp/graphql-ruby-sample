Types::VideoType = GraphQL::ObjectType.define do
  name "Video"
  field :id, types.ID
  field :title, types.String
  field :watched, types.Boolean
end
