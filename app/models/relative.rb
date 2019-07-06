# == Schema Information
#
# Table name: relatives
#
#  id                             :integer          not null, primary key
#  tipo_familiar                  :string
#  tipo_documento_familiar        :string
#  documento_familiar             :string
#  primer_nombre_familiar         :string
#  segundo_nombre_familiar        :string
#  primer_apellido_familiar       :string
#  segundo_apellido_familiar      :string
#  fecha_nacimiento_familiar      :date
#  esta_vivo_familiar             :boolean
#  estado_civil_familiar          :string
#  tiene_cedula_militar_familiar  :boolean
#  direccion_familiar             :string
#  pais_familiar                  :string
#  departamento_familiar          :string
#  municipio_familiar             :string
#  telefono_familiar              :string
#  esta_trabajando_familiar       :boolean
#  nombre_trabajo_familiar        :string
#  empresa_trabajo_familiar       :string
#  cargo_trabajo_familiar         :string
#  tipo_trabajador_familiar       :string
#  fecha_ingreso_trabajo_familiar :date
#  direccion_trabajo_familiar     :string
#  pais_trabajo_familiar          :string
#  departamento_trabajo_familiar  :string
#  municipio_trabajo_familiar     :string
#  telefono_trabajo_familiar      :string
#  user_id                        :integer
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#

class Relative < ApplicationRecord
    belongs_to :user
end
