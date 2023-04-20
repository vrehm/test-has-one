class AddSftpConfigurationToEbicsSftpConfigurations < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def change
    sftp_configuration_id = SftpConfiguration.first.try(:id) || SftpConfiguration.create(name: 'Default SFTP configuration').id
    add_reference :ebics_sftp_configurations, :sftp_configuration, null: false, index: {algorithm: :concurrently}, default: sftp_configuration_id
    change_column_default :ebics_sftp_configurations, :sftp_configuration_id, nil
  end
end