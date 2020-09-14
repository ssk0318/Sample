class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :model
      t.text :company
      t.text :length
      t.text :height
      t.text :width
      t.text :aisle

      t.timestamps
    end
  end
end
