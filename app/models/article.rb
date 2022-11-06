class Article < ApplicationRecord
  belongs_to :fournisseur
  has_many :stocks

  scope :expensive, -> { where('prix > ?', 100) }
  scope :high_stock, -> { joins(:stocks).where('total > 20')}
  scope :low_stock, -> { joins(:stocks).merge(Stock.low_stock) }
  scope :sold_out, -> { joins(:stocks).merge(Stock.out_of_stock) }
end