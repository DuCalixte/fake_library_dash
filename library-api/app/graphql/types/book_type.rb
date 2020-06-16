module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :isbn, String, null: true
    field :description, String, null: true
    field :quantity, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :author, String, null: true
    field :publisher, String, null: true
    field :genre, String, null: true
  end
end
