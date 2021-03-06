class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.integer :year
      t.string :medium
      t.text :notes
      t.string :location
      t.string :image_loc
      t.integer :artist_id
      t.integer :exhibition_id

      t.timestamps
    end
  end
end

# ABOUT IMAGES https://www.postgresql.org/docs/9.3/dblink.html
# https://stackoverflow.com/questions/54500/storing-images-in-postgresql