class CreatePetlicenses < ActiveRecord::Migration
  def change
    create_table :petlicenses do |t|
      t.integer :owner_id
      t.integer :pet_id
      t.string :license_number

      t.timestamps
    end
  end
end
