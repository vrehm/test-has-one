class CreateSftpConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table :sftp_configurations do |t|
      t.string :name

      t.timestamps
    end
  end
end
