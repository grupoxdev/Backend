# == Schema Information
#
# Table name: districts
#
#  id           :integer          not null, primary key
#  nombre       :string
#  direccion    :string
#  departamento :string
#  ciudad       :string
#  telefono     :string
#  latitud      :float
#  longitud     :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class District < ApplicationRecord
    has_many :users

    validates :nombre, :direccion, :departamento, :ciudad, :telefono, :latitud, :longitud, presence:true
    validates :nombre, length:{maximum:50}
    validates :direccion, length:{maximum:100}
    validates :departamento, length:{maximum:50}
    validates :ciudad, length:{maximum:50}
    validates :telefono, numericality:true
    validates :longitud, numericality:{only_float:true}
    validates :latitud, numericality: {only_float:true}


end
