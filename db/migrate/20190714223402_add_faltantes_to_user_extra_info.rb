class AddFaltantesToUserExtraInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :user_extra_infos, :numero_ti, :string
    add_column :user_extra_infos, :pais_nacimiento, :string
    add_column :user_extra_infos, :telefono_fijo, :string
    add_column :user_extra_infos, :graduado, :string
    add_column :user_extra_infos, :modalidad, :string
    add_column :user_extra_infos, :registro_civil, :string
    add_column :user_extra_infos, :documento_identidad, :string
    add_column :user_extra_infos, :eduacion_basica, :string
    add_column :user_extra_infos, :educacion_superior, :string
  end
end
