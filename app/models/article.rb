class Article < ApplicationRecord
  belongs_to :fournisseur
  has_many :stocks
end
