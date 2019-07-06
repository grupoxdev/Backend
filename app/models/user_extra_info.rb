# == Schema Information
#
# Table name: user_extra_infos
#
#  id                    :integer          not null, primary key
#  fecha_exp             :date
#  pais_exp              :string
#  dpto_exp              :string
#  ciudad_exp            :string
#  genero                :integer
#  nacionalidad          :string
#  doble_nacionalidad    :string
#  boolean               :string
#  retornado_de_exterior :boolean
#  excepciones_de_ley    :integer
#  dependencia_economica :integer
#  pais_residencia       :string
#  dpto_residencia       :string
#  municipio_residencia  :string
#  telefono_movil        :string
#  tipo_vivienda         :integer
#  estrato_vivienda      :integer
#  pertenece_red_unidos  :boolean
#  sisben                :boolean
#  esta_cargo_icbf       :boolean
#  estatura              :integer
#  peso                  :decimal(, )
#  grupo_sanguineo       :integer
#  factor_rh             :integer
#  num_hijos             :integer
#  estado_civil          :integer
#  user_id               :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class UserExtraInfo < ApplicationRecord
  belongs_to :user
end
