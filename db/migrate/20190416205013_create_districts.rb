class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
      t.string :nombre
      t.string :direccion
      t.string :departamento
      t.string :ciudad
      t.string :telefono
      t.float :latitud
      t.float :longitud

      t.timestamps
    end
  end
end
