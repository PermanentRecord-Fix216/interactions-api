class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :contact_person
      t.string :organization
      t.string :zip_code


      t.timestamps null: false
    end
  end
end
