class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :primerApellido
      t.string :segundoApellido
      t.string :correo
      t.string :password
      t.integer :tipoDocumento
      t.string :documento
      t.date :fechaNacimiento
      t.string :departamento
      t.string :ciudad
      t.string :telefono
      t.integer :estadoProceso
      t.integer :estadoCivil
      t.string :rh
      t.integer :tipoUsuario
      
      t.timestamps
    end
  end
end
