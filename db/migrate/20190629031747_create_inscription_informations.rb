class CreateInscriptionInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :inscription_informations do |t|
      t.boolean :cursa_educacion_basica
      t.string :nivel_educacion_basica
      t.string :institucion_educacion_basica
      t.date :terminacion_educacion_basica

      t.boolean :cursa_educacion_superior
      t.string :nombre_carrera
      t.string :semestre_educacion_superior
      t.string :institucion_educacion_superior
      t.date :terminacion_educacion_superior

      t.boolean :esta_trabajando
      t.string :nombre_trabajo
      t.string :empresa_trabajo
      t.string :cargo_trabajo
      t.string :tipo_trabajador
      t.date :fecha_ingreso_trabajo
      t.string :direccion_trabajo
      t.string :pais_trabajo
      t.string :departamento_trabajo
      t.string :municipio_trabajo
      t.string :telefono_trabajo

      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
