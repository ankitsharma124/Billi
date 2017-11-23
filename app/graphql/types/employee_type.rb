Types::EmployeeType = GraphQL::ObjectType.define do
  name "Employee"
  field :id, !types.id
  field :first_name, !types.string
  field :last_name, !types.string
  field :email, !types.string
  field :dob, !types.string
end
