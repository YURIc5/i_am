class AddAncestryToTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :types, :ancestry, :string
    add_index :types, :ancestry
  end
end
