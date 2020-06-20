class AddColumnsToArtwork < ActiveRecord::Migration[6.0]
  def change
    add_column :artworks, :dimensions, :integer
    add_column :artworks, :edition_num, :integer
    add_column :artworks, :edition_size, :integer
  end
end
