class Exhibition < ApplicationRecord
    has_many :artworks
    has_many :artists, through: :artworks
    has_many :users, through: :artworks 
    
end
