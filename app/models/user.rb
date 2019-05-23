# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  nombre          :string
#  primerApellido  :string
#  segundoApellido :string
#  correo          :string
#  password        :string
#  tipoDocumento   :integer
#  documento       :string
#  fechaNacimiento :date
#  departamento    :string
#  ciudad          :string
#  telefono        :string
#  estadoProceso   :integer
#  estadoCivil     :integer
#  rh              :string
#  tipoUsuario     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  district_id     :integer
#

class User < ApplicationRecord
    has_secure_password
    has_many :documents
    has_many :appointments
    belongs_to :district
end
