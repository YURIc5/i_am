class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string  :first_name,          null: false
      t.string  :last_name,           null: false
      t.string  :first_name_kana,     null: false
      t.string  :last_name_kana,      null: false
      t.integer :birth_year,          null: false
      t.integer :birth_month,         null: false
      t.integer :birth_day,           null: false
      t.string  :phone_number,        null: false
      t.string  :post_code,           null: false
      t.integer :prefecture_id,       null: false
      t.string  :city,                null: false
      t.string  :block,               null: false
      t.string  :building,            null: false
      t.references :animal,           null: false,  foreign_key: true
      t.timestamps
    end
  end
end
