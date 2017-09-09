Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :updateUser, Types::UserType, 'Update a user profile by id' do
    argument :id, !types.ID, 'The id for the user to update'

    argument :profileImageBase64, as: :profile_image do
      type types.String
      description 'The base64 encoded version of the profile image to upload.'
    end

    argument :profileImageName, types.String, as: :profile_image_file_name, default_value: 'profile-image.jpg'

    resolve ->(_obj, args, _ctx) {
      u = User.find(args[:id])
      u.update(args.to_h)
      u
    }
  end
end
