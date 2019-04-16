class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :nombre
      t.string :primerApellido
      t.string :segundoApellido
      t.string :correo
      t.string :password
      t.integer :tipoDocumento
      t.string :documento

      t.timestamps
    end
  end
end
