class AddImageToPhoto < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :photos, :image
  end

  def self.down
    remove_attachment :photos, :image
  end
end
