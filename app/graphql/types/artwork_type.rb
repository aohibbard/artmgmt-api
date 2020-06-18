module Types
  class ArtworkType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :year, Integer, null: true
    field :medium, String, null: true
    field :notes, String, null: true
    field :location, String, null: true
    field :image_loc, String, null: true
    field :artist_id, Integer, null: true
    field :exhibition_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
