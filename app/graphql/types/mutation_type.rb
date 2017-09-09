Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :updateUser, Types::UserType, 'Update a user profile by id' do
    argument :id, !types.ID, 'The id for the user to update'

    resolve ->(_obj, args, _ctx) {
      u = User.find(args[:id])
      u.update(args.to_h)
      u
    }
  end
end
