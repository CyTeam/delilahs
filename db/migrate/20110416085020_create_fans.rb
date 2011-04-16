class CreateFans < ActiveRecord::Migration
  def self.up
    create_table :fans do |t|
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :fans
  end
end
