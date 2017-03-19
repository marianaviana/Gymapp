class AddAttachmentAttachmentToClients < ActiveRecord::Migration
  def self.up
    change_table :clients do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :clients, :attachment
  end
end
