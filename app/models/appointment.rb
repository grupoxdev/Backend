# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  fecha      :date
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Appointment < ApplicationRecord
    belongs_to :user
end
