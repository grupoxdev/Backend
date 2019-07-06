class CreateUserExtraInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_extra_infos do |t|
      t.date :fecha_exp
      t.string :pais_exp
      t.string :dpto_exp
      t.string :ciudad_exp
      t.integer :genero
      t.string :nacionalidad
      t.string :doble_nacionalidad
      t.string :boolean
      t.boolean :retornado_de_exterior
      t.integer :excepciones_de_ley
      t.integer :dependencia_economica
      t.string :pais_residencia
      t.string :dpto_residencia
      t.string :municipio_residencia
      t.string :telefono_movil
      t.integer :tipo_vivienda
      t.integer :estrato_vivienda
      t.boolean :pertenece_red_unidos
      t.boolean :sisben
      t.boolean :esta_cargo_icbf
      t.integer :estatura
      t.decimal :peso
      t.integer :grupo_sanguineo
      t.integer :factor_rh
      t.integer :num_hijos
      t.integer :estado_civil
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
