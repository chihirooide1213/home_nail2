class CreateNails < ActiveRecord::Migration[5.2]
  def change
    create_table :nails do |t|

      t.timestamps
      t.integer :relationship_id
      t.integer :user_id
      t.string :name
      t.integer :image_id
      t.string :brand
      t.text :introduction
      t.integer :price

    end
  end
end
