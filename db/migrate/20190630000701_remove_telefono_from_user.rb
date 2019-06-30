class RemoveTelefonoFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :telefono, :string
  end
end
