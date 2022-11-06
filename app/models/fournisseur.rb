class Fournisseur < ApplicationRecord
  has_many :articles, foreign_key: "fournisseur_id"

  europeanCountries = ["France", "Germany", "Spain", "Portugal", "Italy", "Greece", "Switzerland", "Belgium", "Sweden"]

  scope :european, -> { where(:provenance => europeanCountries)}

end
