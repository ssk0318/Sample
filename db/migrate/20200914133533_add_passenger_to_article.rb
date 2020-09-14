class AddPassengerToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :passenger, :integer
  end
end
