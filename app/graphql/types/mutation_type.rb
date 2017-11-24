Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  #field :mutationEmployee, Mutations::MutationEmployee.field
  # TODO: Remove me
  #field :testField, types.String do
  #  description "An example field added by the generator"
  #  resolve ->(obj, args, ctx) {
  #    field :createEmployee, function: Resolvers::CreateLink.new
  #  }
  #end
  
  field :createemployee, Types::EmployeeType do
    argument :first_name, types.String
    argument :last_name, types.String
    argument :email, types.String
    argument :dob, types.String
    
    description "Create new employee"
    resolve ->(obj, args, ctx) { Employee.create args.to_h }
  end

  field :upemp, Types::EmployeeType do
    argument :first_name, types.String
    argument :last_name, types.String
    argument :email, types.String
    argument :dob, types.String
    argument :id, types.ID
    description "Update Employee"
    resolve ->(obj, args, ctx) {
      emp=Employee.find(args[:id])
      emp.try :update, args.to_h
      emp
  }
  end

  #field :updateemployee, function: Mutations::updateemp.new
end
