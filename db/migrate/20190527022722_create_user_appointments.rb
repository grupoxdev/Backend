class CreateUserAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_appointments do |t|

      t.timestamps
    end
  end
end
