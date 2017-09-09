Types::UserType = GraphQL::ObjectType.define do
  name 'UserType'
  description 'A user for the application'

  field :id, types.ID
  field :firstName, types.String, property: :first_name
  field :lastName, types.String, property: :last_name
  field :email, types.String
end