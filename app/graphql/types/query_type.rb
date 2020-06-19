module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :users, [Types::UserType], null: false
    field :artists, [Types::ArtistType], null: false
    field :artworks, [Types::ArtworkType], null: false
    field :exhibitions, [Types::ExhibitionType], null: false

    # USER
    def user 
      User.all 
    end 

    field :user, Types::UserType, null: false do 
      argument :id, ID, required: true 
    end 

    def user(id:)
      User.find(id)
    end 

    # ARTIST
    def artist 
      Artist.all 
    end 

    field :artist, Types::ArtistType, null: false do 
      argument :id, ID, required: true 
    end 

    def artist(id:)
      Artist.find(id)
    end 

    # ARTWORKS
    def artwork
      Artwork.all 
    end 

    field :artwork, Types::ArtworkType, null: false do 
      argument :id, ID, required: true 
    end 

    def artwork(id:)
      Artwork.find(id)
    end

    # EXHIBITION

    def exhibition 
      Exhibition.all 
    end 

    field :exhibition, Types::ExhibitionType, null: false do 
      argument :id, ID, required: true 
    end 

    def exhibtion(id:)
      Exhibition.find(id)
    end 


  end
end
