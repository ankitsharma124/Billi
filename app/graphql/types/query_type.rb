Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

 # field :createEmployee, !types[Types::EmployeeTypeType] do
 #   # resolve would be called in order to fetch data for that field
 #   resolve -> (obj, args, ctx) { Employee.all }
 # end

  field :listemplyee, types[Types::EmployeeType] do
    description "Return employee list"
    resolve -> (_,_,_) { Employee.all }
  end 

  
end
