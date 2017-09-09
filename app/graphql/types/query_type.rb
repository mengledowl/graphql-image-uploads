Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :findUser, Types::UserType, 'Find a user by id' do
    argument :id, !types.ID, 'The id of the user to find'

    resolve ->(_obj, args, _ctx) {
      User.find(args[:id])
    }
  end
end
