class Fournisseur < ApplicationRecord
  has_many :articles, foreign_key: "fournisseur_id"
  validates :nom, presence:true, uniqueness: true
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP

  PHONE_REGEXP = /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/
  validates_format_of :telephone, with: PHONE_REGEXP

  after_validation :normalize_name
  after_validation :displayMissingLogo, if: :missingLogo

  IMG_REGEXP = /\.(png|jpg|jpeg|webp)$/
  after_validation :displayWrongFileFormat, if: :wrongFileFormat

  def missingLogo
    self.logo_url.nil?
  end

  def displayMissingLogo
    puts 'Aucun logo pour ce fournisseur'
  end

  def wrongFileFormat
    self.logo_url && !self.logo_url.match?(IMG_REGEXP)
  end

  def displayWrongFileFormat
    puts "Le format utilisé pour l'image est incorrect"
  end

  def normalize_name
    self.nom = self.nom.downcase.titleize
  end


  europeanCountries = ["France", "Germany", "Spain", "Portugal", "Italy", "Greece", "Switzerland", "Belgium", "Sweden"]
  scope :european, -> { where(:provenance => europeanCountries)}
end
