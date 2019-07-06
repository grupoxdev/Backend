class RemoveRhFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :rh, :string
  end
end
