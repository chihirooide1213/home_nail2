class CreateNailComments < ActiveRecord::Migration[5.2]
  def change
    create_table :nail_comments do |t|

      t.timestamps
      t.integer :user_id
      t.integer :nail_id
    end
  end
end
