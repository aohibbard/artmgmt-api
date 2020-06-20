class Mutations::CreateArtist < Mutations::BaseMutation
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :date_of_birth, Integer, required: false
    argument :nationality, String, required: false

    field :artist, Types::ArtistType, null: false 
    field :errors, [String], null: false
    
    def resolve(first_name:, last_name:, date_of_birth:, nationality:)
        artist = Artist.new(first_name: first_name, last_name: last_name, nationality: nationality, date_of_birth: date_of_birth)
        if artist.save
            {
                artist: artist,
                errors: []
            }
        else 
            {
                artist: nil,
                errors: artist.errors.full_message
            }
        end
    end 
end