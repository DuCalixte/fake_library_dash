module Types
  class BookInventoryType < Types::BaseObject
    field :id, ID, null: false
    field :book_id, String, null: true
    field :status, Integer, null: true
    field :is_checkout, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
