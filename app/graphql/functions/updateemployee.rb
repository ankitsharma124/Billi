class Functions::updateemployee < GraphQL::Function
  # Define `initialize` to store field-level options, eg
  #
  #     field :myField, function: Functions::updateemployee.new(type: MyType)
  #
  # attr_reader :type
  # def initialize(type:)
  #   @type = type
  # end

  # add arguments by type:
   argument :id, types.ID
   argument :first_name, types.String
    argument :last_name, types.String
    argument :email, types.String
    argument :dob, types.String

    type Types::EmployeeType

  # Resolve function:
  def call(obj, args, ctx)
    emp = Employee.find(args[:id])
    emp.try :update, args.to_h
    emp 
  end
end

