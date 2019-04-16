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
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class District < ApplicationRecord
    has_many :admins
    has_many :users
end
