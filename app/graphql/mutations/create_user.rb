class Mutations::CreateUser < Mutations::BaseMutations
    arguments :first_name, String, required: true
    arguments :last_name, String, required: true
    arguments :email, String, required: true
    arguments :password_digest, String, required: true

    field :artist, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(first_name:, last_name:, email:, password_digest:)
        user = User.new(first_name: name, last_name: last_name: email: email, password_digest: password_digest)
        if user.save 
            {
                user: user,
                errors: []
            }
        else 
            {
                user: nil,
                errors: user.errors.full_message
            }
    end
end