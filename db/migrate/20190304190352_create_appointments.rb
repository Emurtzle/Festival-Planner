class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :stage_id
      t.integer :band_id
      t.integer :schedule_id
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
