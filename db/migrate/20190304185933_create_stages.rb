class CreateStages < ActiveRecord::Migration[5.2]
  def change
    create_table :stages do |t|
      t.string :name
      t.text :description
      t.integer :festival_id

      t.timestamps
    end
  end
end
