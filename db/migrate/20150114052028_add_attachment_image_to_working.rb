class AddAttachmentImageToWorking < ActiveRecord::Migration
  def self.up
    change_table :working do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :working, :image
  end
end
