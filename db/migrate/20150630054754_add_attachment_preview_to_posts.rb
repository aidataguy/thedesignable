class AddAttachmentPreviewToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :preview
    end
  end

  def self.down
    remove_attachment :posts, :preview
  end
end
