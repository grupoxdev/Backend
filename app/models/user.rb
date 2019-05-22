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
    validates :nombre, :primerApellido, :segundoApellido, :telefono, :password, 
              :correo, :tipoDocumento, :documento, :tipoUsuario, :ciudad, :departamento, presence: true
    validates :nombre, :primerApellido, :segundoApellido, length: { maximum: 100, too_long:"Pueden haber unicamente %´{count} caracteres" }
    validates :telefono, length: { maximum: 20, too_long: "Se permiten máximo %´{count} caracteres" }
    validates :departamento, length: { maximum: 56, too_long: "Se permiten máximo %´{count} caracteres" }
    validates :ciudad, length: { maximum: 85, too_long: "Se permiten máximo %´{count} caracteres" }
    validates :password, length: { minimum: 8, too_short:"La contraseña debe tener minimo %´{count} caracteres" }
    validates :correo, uniqueness: { message: "Este correo ya ha sido registrado." }
    validates :correo, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ } 
    validates :documento, uniqueness: { message: "Este documento ya ha sido resgistrado"}

    has_many :documents
    has_many :appointments
    belongs_to :district
end
