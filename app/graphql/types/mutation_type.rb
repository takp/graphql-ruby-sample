Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :add_video do
    type Types::VideoType
    description "Mutate video"
    argument :video, Types::VideoInputType

    resolve ->(o, args, c) {
      Video.create(
        title:   args.to_h['video']['title'],
        watched: false
      )
    }
  end
end
