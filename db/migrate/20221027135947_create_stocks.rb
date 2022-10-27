class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|

      t.timestamps
      t.belongs_to :article, foreign_key: true
      t.integer :xs
      t.integer :s
      t.integer :m
      t.integer :l
      t.integer :xl
    end
  end
end
