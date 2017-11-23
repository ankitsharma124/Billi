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
    field :create_employee, function: Resolvers::create_employee.new

end
