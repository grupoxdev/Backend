class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre, limit: 100, null: false
      t.string :primerApellido, limit: 100, null: false
      t.string :segundoApellido, limit: 100, null: false
      t.string :correo, null: false
      t.string :password, null: false
      t.integer :tipoDocumento, null: false
      t.string :documento, null: false
      t.date :fechaNacimiento
      t.string :departamento, limit: 56, null: false
      t.string :ciudad, limit: 85, null: false
      t.string :telefono, limit: 20, null: false
      t.integer :estadoProceso
      t.integer :estadoCivil
      t.string :rh
      t.integer :tipoUsuario, limit: 100, null: false
      
      t.timestamps
    end
  end
end
