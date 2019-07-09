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
#  departamento    :string(56)
#  ciudad          :string(85)
#  estadoProceso   :integer
#  estadoCivil     :integer
#  tipoUsuario     :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  district_id     :integer
#  avatar          :string
#  first_session   :boolean
#

class User < ApplicationRecord
    has_secure_password

    mount_uploader :avatar, AvatarUploader
   
    users = User.all

    validates :nombre, :primerApellido, :segundoApellido, 
              :email, :tipoDocumento, :documento, :tipoUsuario, presence: true
    validates :nombre, :primerApellido, :segundoApellido, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
    validates :departamento, length: { maximum: 56, too_long: "Se permiten máximo %´{count} caracteres" }
    validates :ciudad, length: { maximum: 85, too_long: "Se permiten máximo %´{count} caracteres" }
    validates :email, uniqueness: { message: "Este correo ya ha sido registrado." }
    validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }  
    validates :documento, uniqueness: { message: "Este documento ya ha sido resgistrado"}
  
    has_many :documents
    has_many :user_appointments
    has_many :appointments, through: :user_appointments
    has_one :inscription_information
    has_many :relatives
    belongs_to :district

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
end
