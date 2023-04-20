# == Schema Information
#
# Table name: ebics_sftp_configurations
#
#  id                    :bigint           not null, primary key
#  name                  :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  holding_id            :bigint           not null
#  sftp_configuration_id :bigint           not null
#
# Indexes
#
#  index_ebics_sftp_configurations_on_holding_id             (holding_id)
#  index_ebics_sftp_configurations_on_sftp_configuration_id  (sftp_configuration_id)
#
# Foreign Keys
#
#  fk_rails_...  (holding_id => holdings.id)
#
class EbicsSftpConfiguration < ApplicationRecord
  belongs_to :holding, inverse_of: :ebics_sftp_configuration
  belongs_to :sftp_configuration

  validates :holding, presence: true
end
