class AddAttachmentImageToBusinesscards < ActiveRecord::Migration[5.1]
  def self.up
    change_table :businesscards do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :businesscards, :image
  end
end
