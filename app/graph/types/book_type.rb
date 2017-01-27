BookType = GraphQL::ObjectType.define do
  name 'Book'
  description 'A book'
  field :title, types.String
  field :description, types.String
  field :author do
    type AuthorType
    resolve -> (obj, _args, _ctx) { obj.author }
  end
end
