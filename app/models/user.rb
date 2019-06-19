# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  nombre          :string(100)      not null
#  primerApellido  :string(100)      not null
#  segundoApellido :string(100)      not null
#  email           :string           not null
#  password_digest :string           not null
#  tipoDocumento   :integer          not null
#  documento       :string           not null
#  fechaNacimiento :date
#  departamento    :string(56)       not null
#  ciudad          :string(85)       not null
#  telefono        :string(20)       not null
#  estadoProceso   :integer
#  estadoCivil     :integer
#  rh              :string
#  tipoUsuario     :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  district_id     :integer
#

class User < ApplicationRecord
    has_secure_password


  
    has_many :documents
    has_many :user_appointments
    has_many :appointments, through: :user_appointments
    belongs_to :district

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
end
