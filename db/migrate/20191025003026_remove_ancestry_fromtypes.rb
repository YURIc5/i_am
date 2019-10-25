class RemoveAncestryFromtypes < ActiveRecord::Migration[5.2]
  def change
    remove_column :types, :ancestry, :string
  end
end
