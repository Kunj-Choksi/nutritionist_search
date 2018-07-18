class AddAttachmentAvatarToNutritionistProfiles < ActiveRecord::Migration[5.2]
  def self.up
    change_table :nutritionist_profiles do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :nutritionist_profiles, :avatar
  end
end
