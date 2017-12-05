Types::UserType = GraphQL::ObjectType.define do
  name "UserType"

  field :email, types.String
  field :password, types.String
  field :password_confirmation, types.String
end
