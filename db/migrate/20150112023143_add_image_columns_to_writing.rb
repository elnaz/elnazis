class AddImageColumnsToWriting < ActiveRecord::Migration
  def self.up
    add_attachment :writing, :image
  end
  
  def self.down
    remove_attachment :writing, :image
  end
end
