class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :article do |t|

      t.timestamps

      t.string :nom
      t.string :marque
      t.string :cover_url
      t.string :image_url
      t.integer :prix
      t.belongs_to :fournisseur
    end
  end
end
