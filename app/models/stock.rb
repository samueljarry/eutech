class Stock < ApplicationRecord
  belongs_to :article
  validates :total, comparison: { greater_than: 0 }

  scope :low_stock, -> { where('total < ?', 20) }
  scope :out_of_stock, -> { where(:total => 0) }
end
