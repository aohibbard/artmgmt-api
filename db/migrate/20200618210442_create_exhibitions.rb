class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.string :title
      t.string :host
      t.string :location
      t.date :start_date
      t.date :end_date
      t.text :notes

      t.timestamps
    end
  end
end
