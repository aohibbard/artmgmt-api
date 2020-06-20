class Mutations::CreateExhibition < Mutations::BaseMutation
    argument :title, String, required: true 
    argument :host, String, required: true 
    argument :location, String, required: true
    argument :start_date, Integer, required: false 
    argument :end_date, Integer, required: false 
    argument :notes, String, required: false 

    field :exhibition, Types::ExhibitionType, null: false 
    field :errors, [String], null: false 

    def resolve(title:, host:, location:, start_date:, end_date:, notes:)
        exhibition = Exhibition.new(title: title, host: host, location: location, start_date: start_date, end_date: end_date, notes: notes)
        if exhibition.save
            {
                exhibition: exhibition,
                errors: []
            }
        else 
            {
                exhibition: nil,
                errors: exhibition.errors.full_message
            }
        end 
    end

end 