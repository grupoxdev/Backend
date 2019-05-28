# == Schema Information
#
# Table name: user_appointments
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  appointment_id :integer
#

class UserAppointment < ApplicationRecord
    belongs_to :user
    belongs_to :appointment
end
