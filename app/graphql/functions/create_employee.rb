class Functions::create_employee < GraphQL::Function
  argument :first_name, !types.String
  argument :last_name, !types.String
  argument :email, !types.String
  argument :dob, !types.String

  # return type from the mutation
  type Types::EmployeeType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    Employee.create!(
      description: args[:description],
      url: args[:url],
    )
  end
end
