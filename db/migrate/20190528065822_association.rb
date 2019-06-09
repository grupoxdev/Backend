class Association < ActiveRecord::Migration[5.2]
  def change
    change_table :documents, id: false do |t|
      t.belongs_to :user, index: true
    end

    change_table :users, id: false do |t|
      t.belongs_to :district, index: true
    end

    change_table :user_appointments, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :appointment, index: true
    end
  end
end