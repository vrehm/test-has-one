# == Schema Information
#
# Table name: sftp_configurations
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SftpConfiguration < ApplicationRecord
  has_many :ebics_sftp_configurations, dependent: :destroy, inverse_of: :sftp_configuration
  has_many :holdings, through: :ebics_sftp_configurations
end
