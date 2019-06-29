# == Schema Information
#
# Table name: inscription_informations
#
#  id                             :integer          not null, primary key
#  cursa_educacion_basica         :boolean
#  nivel_educacion_basica         :string
#  institucion_educacion_basica   :string
#  terminacion_educacion_basica   :date
#  cursa_educacion_superior       :boolean
#  nombre_carrera                 :string
#  semestre_educacion_superior    :string
#  institucion_educacion_superior :string
#  terminacion_educacion_superior :date
#  esta_trabajando                :boolean
#  nombre_trabajo                 :string
#  empresa_trabajo                :string
#  cargo_trabajo                  :string
#  tipo_trabajador                :string
#  fecha_ingreso_trabajo          :date
#  direccion_trabajo              :string
#  pais_trabajo                   :string
#  departamento_trabajo           :string
#  municipio_trabajo              :string
#  telefono_trabajo               :string
#  user_id                        :integer
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#

class InscriptionInformation < ApplicationRecord
    belongs_to :user
end
