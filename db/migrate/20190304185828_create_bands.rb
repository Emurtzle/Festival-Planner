class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :description
      t.string :img_link

      t.timestamps
    end
  end
end
