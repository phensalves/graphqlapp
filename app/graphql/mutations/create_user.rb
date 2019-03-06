module Mutations
  class CreateUser < GraphQL::Function
    argument :id, types.ID
    argument :name, types.String
    argument :email, types.String
    argument :phone_number, types.Int
    argument :is_admin, types.Boolean
    argument :country_id, types.Int

    type Types::UserType

    def call(obj, args, context)
      User.create(args.to_h)
    end
  end
end