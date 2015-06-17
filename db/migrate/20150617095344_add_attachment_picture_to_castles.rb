class AddAttachmentPictureToCastles < ActiveRecord::Migration
  def self.up
    change_table :castles do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :castles, :picture
  end
end
