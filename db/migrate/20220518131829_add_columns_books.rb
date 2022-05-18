class AddColumnsBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :title, :string
    add_column :books, :description, :text
  end
end
