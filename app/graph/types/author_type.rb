AuthorType = GraphQL::ObjectType.define do
  name 'Author'
  description 'Author of Books'
  field :name, types.String
end
