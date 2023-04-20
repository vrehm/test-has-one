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
#  fk_rails_...  (sftp_configuration_id => sftp_configurations.id)
#
class EbicsSftpConfiguration < ApplicationRecord
  belongs_to :holding
  belongs_to :sftp_configuration
end
