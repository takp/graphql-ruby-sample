Types::VideoInputType = GraphQL::InputObjectType.define do
  name "VideoInputType"
  description "Create new video"

  argument :title, !types.String do
    description "Title of the video."
  end
end
