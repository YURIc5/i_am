class RemoveGroupIdIdFromAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :group_id_id, :bigint
  end
end
