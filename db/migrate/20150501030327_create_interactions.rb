class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :officer_name
      t.string :officer_badge
      t.string :organization
      t.string :zip_code
      t.text :comment
      t.string :reporter_name
      t.string :reporter_phone
      t.string :reporter_race
      t.string :reporter_sex
      t.string :reporter_age
      t.string :status

      t.timestamps null: false
    end
  end
end
