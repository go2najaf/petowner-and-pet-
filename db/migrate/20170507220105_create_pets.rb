class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.integer :pet_age
      t.text :about
      t.string :tpe
      t.float :weight
      t.float :height
      t.string :size
      t.string :breed
      t.string :sex
      t.string :spay
      t.string :allergies
      t.string :medications
      t.string :vaccine
      t.references :user, index: true, foreign_key: true 

      t.timestamps
    end
    add_index :pets, [:user_id, :created_at]
  end
end
