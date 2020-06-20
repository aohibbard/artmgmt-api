class Mutations::CreateExhibition < Mutations::BaseMutations
    arguments :title, String, required: true 
    arguments :host, String, required: true 
    arguments :location, String, required: true
    arguments :start_date, Date, required: false 
    arguments :end_date, Date, required: false 
    arguments :notes, Text, required: false 

    field :exhibitions, Types::ExhibitionType, null: false 
    field :errors, [String], null: false 

    def resolve(title:, host: location:, start_date:, end_date:, notes:)
        exhibition = Exhibition.new(title: title, host: host, location: location, start_date: start_date, end_date: end_date, notes: notes)
        if exhibition.save?
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