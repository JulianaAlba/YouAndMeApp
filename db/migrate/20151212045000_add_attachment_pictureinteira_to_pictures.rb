class AddAttachmentPictureinteiraToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :pictureinteira
    end
  end

  def self.down
    remove_attachment :pictures, :pictureinteira
  end
end
