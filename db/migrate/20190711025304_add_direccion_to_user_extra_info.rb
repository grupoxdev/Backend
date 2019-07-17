class AddDireccionToUserExtraInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :user_extra_infos, :direccion, :string
  end
end
