class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :tag
    end
  end
end
