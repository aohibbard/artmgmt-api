class Mutations::CreateArtwork < Mutations::BaseMutations
    arguments :title, String, required: true 
    arguments :year, Integer, required: true 
    arguments :medium, String, required: false
    arguments :notes, Text, required: false
    arguments :location, String, required: false
    arguments :image_loc, String, required: false 
    arguments :artist_id, Integer, required: true 
    arguments :exhibition_id, Integer, required: false 
    arguments :user_id, Integer, required: true 
    # assign current_user
    # edition_num, edition_size, dimensions after migration
    # add expenses class

    field :artworks, Types::ArtworkType, null: false
    field :errors, [String], null: false 

    def resolve(title:, year:, medium:, notes:, location:, image_loc:, artist_id:, exhibition_id:, user_id:)
        artwork = Artwork.new(title: title, year: year, medium: medium, notes:notes, location: location, image_loc: image_loc, artist_id: artist_id, exhibition_id: exhibition_id, user_id: user_id)
        if artwork.save?
            {
                artwork: artwork,
                errors: []
            }
        else 
            {
                artwork: nil,
                errors: artwork.errors.full_message
            }
        end 
    end 

end