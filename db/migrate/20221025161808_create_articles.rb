class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|

      t.timestamps

      t.string :nom
      t.belongs_to :fournisseur, foreign_key: true
      t.integer :prix
      t.string :categorie
      t.string :cover_url
      t.string :image_url
    end
  end
end
