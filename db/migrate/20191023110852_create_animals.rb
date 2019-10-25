class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name,                 null: false
      t.integer :birth_year,          null: false
      t.integer :birth_month
      t.integer :birth_day
      t.text :character,              null: false
      t.integer :vaccine,             null: false
      t.integer :castration,          null: false
      t.integer :size,                null: false
      t.integer :prefecture_id,       null: false
      t.integer :gender,              null: false
      t.integer :senior_application,  null: false
      t.integer :single_application,  null: false
      t.timestamps
    end
  end
end
