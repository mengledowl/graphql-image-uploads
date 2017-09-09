Types::UserType = GraphQL::ObjectType.define do
  name 'UserType'
  description 'A user for the application'

  field :id, types.ID
  field :firstName, types.String, property: :first_name
  field :lastName, types.String, property: :last_name
  field :email, types.String
  field :profileImageUrl, types.String do
    resolve ->(user, _args, _ctx) {
      user.profile_image.url
    }
  end
end