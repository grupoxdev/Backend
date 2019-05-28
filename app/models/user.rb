# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  nombre          :string(100)      not null
#  primerApellido  :string(100)      not null
#  segundoApellido :string(100)      not null
#  correo          :string           not null
#  password        :string           not null
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
    validates :nombre, :primerApellido, :segundoApellido, :telefono, :password, 
              :correo, :tipoDocumento, :documento, :tipoUsuario, :ciudad, :departamento, presence: true
    validates :nombre, :primerApellido, :segundoApellido, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
    validates :telefono, format: {with: /[0-9]/, message:"Solo se aceptan números"}
    validates :telefono, length: { maximum: 20, too_long: "Se permiten máximo %´{count} caracteres" }
    validates :departamento, length: { maximum: 56, too_long: "Se permiten máximo %´{count} caracteres" }
    validates :ciudad, length: { maximum: 85, too_long: "Se permiten máximo %´{count} caracteres" }
    validates :password, length: { minimum: 8, too_short:"La contraseña debe tener minimo %´{count} caracteres" }
    validates :correo, uniqueness: { message: "Este correo ya ha sido registrado." }
    validates :correo, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ } 
    validates :documento, uniqueness: { message: "Este documento ya ha sido resgistrado"}

    has_many :documents
    has_many :user_appointments
    has_many :appointments, through: :user_appointments
    belongs_to :district
end
