class AddNameProfileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string #追記
    add_column :users, :profile, :text #追記
  end
end
