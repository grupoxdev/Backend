class AddTieneHermanoToUserExtraInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :user_extra_infos, :tiene_hermano, :boolean
  end
end
