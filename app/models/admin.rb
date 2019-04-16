# == Schema Information
#
# Table name: admins
#
#  id              :integer          not null, primary key
#  nombre          :string
#  primerApellido  :string
#  segundoApellido :string
#  correo          :string
#  password        :string
#  tipoDocumento   :integer
#  documento       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  district_id     :integer
#

class Admin < ApplicationRecord
    belongs_to :district
end
