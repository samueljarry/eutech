class AddTotalToStocks < ActiveRecord::Migration[7.0]
  def change
    add_column :stocks, :total, :integer
  end
end
