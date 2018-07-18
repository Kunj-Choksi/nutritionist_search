class CreateNutritionistNutritionistSpecialityRels < ActiveRecord::Migration[5.2]
  def change
    create_table :nutritionist_nutritionist_speciality_rels do |t|
        t.integer :nutritionist_id
        t.integer :speciality_id
        t.timestamps
    end
  end
end
