class CreateMasterSpecialities < ActiveRecord::Migration[5.2]
  def up
    create_table :master_specialities do |t|
      t.string 'name'
      t.text 'description', :default => "", :null => false
      t.timestamps
    end
  end
  def down
    drop_table :master_specialities
  end
end
