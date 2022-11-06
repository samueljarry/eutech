class Stock < ApplicationRecord
  belongs_to :article

  scope :low_stock, -> { where('total < ?', 20) }
  scope :out_of_stock, -> { where(:total => 0) }
end
