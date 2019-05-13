class Association < ActiveRecord::Migration[5.2]
  def change
    change_table :documents, id: false do |t|
      t.belongs_to :user, index: true
    end

    change_table :users, id: false do |t|
      t.belongs_to :district, index: true
    end

    change_table :appointments, id: false do |t|
      t.belongs_to :user, index: true
    end
  end
end
