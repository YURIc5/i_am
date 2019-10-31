class AddClomunToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :favorites_count, :integer
  end
end
