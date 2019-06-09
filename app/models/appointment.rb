# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  fecha      :date
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Appointment < ApplicationRecord
    has_many :user_appointments
    has_many :users, through: :user_appointments
end
