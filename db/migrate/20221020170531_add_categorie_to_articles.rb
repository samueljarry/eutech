class AddCategorieToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :article, :categorie, :string
  end
end
