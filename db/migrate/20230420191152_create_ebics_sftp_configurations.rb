class CreateEbicsSftpConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table :ebics_sftp_configurations do |t|
      t.string :name
      t.belongs_to :holding, null: false, foreign_key: true

      t.timestamps
    end
  end
end
