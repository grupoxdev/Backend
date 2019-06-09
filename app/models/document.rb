# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  nombre     :string
#  archivo    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Document < ApplicationRecord
    belongs_to :user
    mount_uploader :archivo, DocumentUploader
end
