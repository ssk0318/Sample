class ChangeDatatypeCompanyOfArticle < ActiveRecord::Migration[6.0]
  def change
    change_column :articles, :company, :integer #追記
  end
end
