class Fournisseur < ApplicationRecord
  has_many :articles, foreign_key: "fournisseur_id"
end
