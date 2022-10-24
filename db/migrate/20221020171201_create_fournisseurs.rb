class CreateFournisseurs < ActiveRecord::Migration[7.0]
  def change
    create_table :fournisseurs do |t|

      t.timestamps

      t.string :nom
      t.string :provenance
      t.string :telephone
      t.string :email
      t.string :logo_url
    end
  end
end
