class CreateFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :city
      t.text :description
      t.integer :duration

      t.integer :organizer_id

      t.timestamps
    end
  end
end
