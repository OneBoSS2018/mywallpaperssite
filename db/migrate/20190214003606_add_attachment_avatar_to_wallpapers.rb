class AddAttachmentAvatarToWallpapers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :wallpapers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :wallpapers, :avatar
  end
end
