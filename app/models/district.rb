# == Schema Information
#
# Table name: districts
#
#  id           :integer          not null, primary key
#  nombre       :string(80)       not null
#  direccion    :string(100)      not null
#  departamento :string(56)       not null
#  ciudad       :string(85)       not null
#  telefono     :string(20)       not null
#  latitud      :float            not null
#  longitud     :float            not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class District < ApplicationRecord
    validates :nombre, :direccion, :departamento, :ciudad, :telefono, :latitud, :longitud, presence:true
    validates :nombre, length:{maximum:80, too_long:"Se permite máximo %´{count} caracteres "}
    validates :direccion, length:{maximum:100, too_long:"Se permite máximo %´{count} caracteres "}
    validates :departamento, length:{maximum:56, too_long:"Se permite máximo %´{count} caracteres "}
    validates :ciudad, length:{maximum:85 , too_long:"Se permite máximo %´{count} caracteres "}
    validates :telefono, format: {with: /[0-9]/, message:"Solo se aceptan números"}
    validates :telefono, length: { maximum: 20, too_long: "Se permiten máximo %´{count} caracteres" }
    validates :longitud, numericality:{only_float:true}
    validates :latitud, numericality: {only_float:true}

    has_many :users

end
