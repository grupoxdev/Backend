class CreateRelatives < ActiveRecord::Migration[5.2]
  def change
    create_table :relatives do |t|
      t.string :tipo_familiar #hermano, hermana, padre, madre
      t.string :tipo_documento_familiar
      t.string :documento_familiar
      t.string :primer_nombre_familiar
      t.string :segundo_nombre_familiar
      t.string :primer_apellido_familiar
      t.string :segundo_apellido_familiar
      t.date :fecha_nacimiento_familiar 
      t.boolean :esta_vivo_familiar 
      t.string :estado_civil_familiar
      t.boolean :tiene_cedula_militar_familiar
      t.string :direccion_familiar
      t.string :pais_familiar #donde viva actualmente
      t.string :departamento_familiar
      t.string :municipio_familiar
      t.string :telefono_familiar

      t.boolean :esta_trabajando_familiar
      t.string :nombre_trabajo_familiar
      t.string :empresa_trabajo_familiar
      t.string :cargo_trabajo_familiar
      t.string :tipo_trabajador_familiar
      t.date :fecha_ingreso_trabajo_familiar
      t.string :direccion_trabajo_familiar
      t.string :pais_trabajo_familiar
      t.string :departamento_trabajo_familiar
      t.string :municipio_trabajo_familiar
      t.string :telefono_trabajo_familiar

      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
