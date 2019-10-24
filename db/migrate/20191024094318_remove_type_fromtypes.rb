class RemoveTypeFromtypes < ActiveRecord::Migration[5.2]
  def change
    remove_column :types, :type, :string
  end
end
