module Types
  class ExhibitionType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :host, String, null: true
    field :location, String, null: true
    field :start_date, GraphQL::Types::ISO8601Date, null: true
    field :end_date, GraphQL::Types::ISO8601Date, null: true
    field :notes, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
