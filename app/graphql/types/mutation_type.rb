module Types
  class MutationType < Types::BaseObject
    # Create Actions
    field :create_user, mutation: Mutations::CreateUser
    field :create_artist, mutation: Mutations::CreateArtist
    field :create_artwork, mutation: Mutations::CreateArtwork 
    field :create_exhibition, mutation: Mutations::CreateExhibition 

    # PUT/PATCH

    # DELETE

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
  end
end
