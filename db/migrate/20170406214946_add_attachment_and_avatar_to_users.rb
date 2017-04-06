class AddAttachmentAndAvatarToUsers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :users do |t|
      t.attachment :attachment
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :clients, :attachment
    remove_attachment :clients, :avatar
  end
end
