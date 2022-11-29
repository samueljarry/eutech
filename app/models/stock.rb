class Stock < ApplicationRecord
  belongs_to :article
  validates :total, comparison: { greater_than: 0 }

  scope :low_stock, -> { where('total < ?', 20) }
  scope :out_of_stock, -> { where(:total => 0) }

  after_validation :setTotal
  def setTotal
    self.total = self.xs + self.s + self.m + self.l + self.xl
  end

  after_update :changeStock

  def changeStock
    puts 'test'
  end

end
