class AddGroupIdToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_reference :animals, :group, foreign_key: true
    add_reference :animals, :type,  foreign_key: true
  end
end
