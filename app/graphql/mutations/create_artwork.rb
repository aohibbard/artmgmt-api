class Mutations::CreateArtwork < Mutations::BaseMutation
    argument :title, String, required: true 
    argument :year, Integer, required: true 
    argument :medium, String, required: false
    argument :notes, String, required: false
    argument :location, String, required: false
    argument :image_loc, String, required: false 
    argument :artist_id, Integer, required: true 
    argument :exhibition_id, Integer, required: false 
    argument :user_id, Integer, required: true 
    # assign current_user
    # edition_num, edition_size, dimensions after migration
    # add expenses class

    field :artwork, Types::ArtworkType, null: false
    field :errors, [String], null: false 

    def resolve(title:, year:, medium:, notes:, location:, image_loc:, artist_id:, exhibition_id:, user_id:)
        artwork = Artwork.new(title: title, year: year, medium: medium, notes:notes, location: location, image_loc: image_loc, artist_id: artist_id, exhibition_id: exhibition_id, user_id: user_id)
        if artwork.save
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