class CreateNutritionistProfiles < ActiveRecord::Migration[5.2]
  def up
    create_table :nutritionist_profiles do |t|

      t.string 'name'
      t.string 'mobile_no'
      t.string 'email', :default => "", :null => false
      t.string 'counsultation_fees'
      t.integer 'experience'
      t.text 'work_history'
      t.integer 'gender_id'
      t.datetime 'dob'
      t.text 'about'
      t.text 'awards'
      t.integer 'ntuitive_user_id'
      t.integer 'city_id'
      t.timestamps

    end
  end
  def down
    drop_table :nutritionist_profiles
  end
end

