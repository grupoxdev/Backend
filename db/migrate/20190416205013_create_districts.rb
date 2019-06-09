class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
      t.string :nombre, limit: 80, null: false
      t.string :direccion, limit: 100, null: false
      t.string :departamento, limit: 56, null: false
      t.string :ciudad, limit: 85, null: false
      t.string :telefono, limit: 20, null: false
      t.float :latitud, null: false
      t.float :longitud, null: false

      t.timestamps
    end
  end
end
