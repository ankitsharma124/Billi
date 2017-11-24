Types::EmployeeType = GraphQL::ObjectType.define do
  name "EmployeeType"
  
  field :id, types.ID
  field :first_name, types.String
  field :last_name, types.String
  field :email, types.String
  field :dob, types.String
end
