class Mutations::CreateArtist < Mutations::BaseMutations
    arguments :first_name, String, required: true
    arguments :last_name, String, required: true
    arguments :date_of_birth, Date, required: false
    arguments :nationality, String, required: false

    field :artists, Types::ArtistType, null: false 
    field :errors, [String], null: false
    
    def resolve(first_name:, last_name:, :date_of_birth, :nationality)
        artist = Artist.new(first_name: first_name, last_name: last_name: nationality: nationality, date_of_birth: date_of_birth)
        if artist.save? 
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