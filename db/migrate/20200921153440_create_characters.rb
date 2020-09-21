class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :image
      t.string :favorite_food
      t.boolean :affiliation

      t.timestamps
    end
  end
end
