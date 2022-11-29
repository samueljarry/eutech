class CreateTestPundits < ActiveRecord::Migration[7.0]
  def change
    create_table :test_pundits do |t|

      t.timestamps
      t.string :nom
    end
  end
end
