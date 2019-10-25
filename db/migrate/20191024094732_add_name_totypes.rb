class AddNameTotypes < ActiveRecord::Migration[5.2]
  def change
    add_column :types, :name, :string, null: false
    add_column :types, :ancestry, :string
    add_index :types, :ancestry
  end
end
