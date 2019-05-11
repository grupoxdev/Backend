class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :fecha
      t.string :nombre

      t.timestamps
    end
  end
end
