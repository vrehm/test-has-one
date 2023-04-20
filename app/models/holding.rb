# == Schema Information
#
# Table name: holdings
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Holding < ApplicationRecord
  has_one :ebics_sftp_configuration, dependent: :destroy, inverse_of: :holding

  # def replace_ebics_sftp_configuration!(ebics_sftp_configuration)
  #   ActiveRecord::Base.transaction do
  #     self.ebics_sftp_configuration&.destroy!
  #     self.ebics_sftp_configuration = ebics_sftp_configuration
  #     self.save!
  #   end
  # rescue ActiveRecord::RecordInvalid, ActiveRecord::RecordNotDestroyed
  #   self
  # end
end
