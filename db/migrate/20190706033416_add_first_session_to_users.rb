class AddFirstSessionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_session, :boolean
  end
end
