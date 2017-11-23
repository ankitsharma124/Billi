Mutations::MutationEmployee = GraphQL::Relay::Mutation.define do
  name "MutationEmployee"
  # TODO: define return fields
  # return_field :post, Types::PostType

  # TODO: define arguments
  # input_field :name, !types.String

  resolve ->(obj, args, ctx) {
    # TODO: define resolve function
      field :createLink, function: Resolvers::CreateLink.new
  }
end
