class AddColumnToNailComments < ActiveRecord::Migration[5.2]
  def change
    add_column :nail_comments, :rate, :float
    add_column :nail_comments, :content, :text
    add_column :nail_comments, :title, :string
  end
end
