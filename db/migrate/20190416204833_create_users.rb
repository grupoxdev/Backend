class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre, limit: 100, null: false
      t.string :primerApellido, limit: 100, null: false
      t.string :segundoApellido, limit: 100, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.integer :tipoDocumento, null: false
      t.string :documento, null: false
      t.date :fechaNacimiento
      t.string :departamento, limit: 56
      t.string :ciudad, limit: 85
      t.string :telefono, limit: 20 
      t.integer :estadoProceso
      t.integer :estadoCivil
      t.string :rh
      t.integer :tipoUsuario, limit: 100, null: false
      
      t.timestamps
    end
  end
end
