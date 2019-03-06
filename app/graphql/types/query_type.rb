Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  # field :testField, types.String do
  #   description "An example field added by the generator"
  #   resolve ->(obj, args, ctx) {
  #     "Hello World!"
  #   }
  # end
  field :user, Types::UserType do
    argument :id, types.ID
    argument :name, types.String
    description "User identify"

    resolve ->(obj, args, ctx) {
      User.where(id: args[:id]).first
    }
  end

  field :allUsers, types[Types::UserType] do
    resolve ->(obj, args, ctx) {
      User.all
    }
  end

  field :allCountries, types[Types::CountryType] do
    resolve ->(obj, args, ctx) {
      Country.all
    }
  end
end
