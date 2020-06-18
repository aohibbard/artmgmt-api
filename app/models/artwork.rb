class Artwork < ApplicationRecord
    belongs_to :artist
    belongs_to :exhibition
    belongs_to :user
    
end
