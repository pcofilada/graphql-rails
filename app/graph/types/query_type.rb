QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'

  field :book do
    type BookType
    argument :id, !types.ID
    resolve -> (_obj, args, _ctx) { Book.find(args[:id]) }
  end
end
