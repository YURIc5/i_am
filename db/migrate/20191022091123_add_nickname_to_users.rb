class AddNicknameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
