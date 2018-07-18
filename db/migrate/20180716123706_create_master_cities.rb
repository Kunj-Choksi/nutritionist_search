class CreateMasterCities < ActiveRecord::Migration[5.2]
  def up
    create_table :master_cities do |t|
      t.string 'name'
      t.integer 'status_id'
      t.timestamps
    end
  end
  def down
    drop_table :master_cities
  end
end
