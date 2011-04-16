class AddHasDownloadedToFan < ActiveRecord::Migration
  def self.up
    add_column :fans, :has_downloaded, :boolean
  end

  def self.down
    remove_column :fans, :has_downloaded
  end
end
