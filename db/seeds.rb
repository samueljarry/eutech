require "faker"

Stock.delete_all
Article.delete_all
Fournisseur.delete_all

10.times do


  fournisseur = Fournisseur.create(
    {
      nom: Faker::Commerce.unique.brand,
      provenance: Faker::Address.country,
      telephone: Faker::PhoneNumber.cell_phone_in_e164,
      email: Faker::Internet.email
    }
  )

  article = Article.create(
    {
      nom: Faker::Commerce.unique.product_name,
      fournisseur_id: fournisseur.id,
      prix: Faker::Number.within(range: 1..150),
      categorie: Faker::Commerce.department(max: 1)
    }
  )

  Stock.create(
    {
      article_id: article.id,
      xs: Faker::Number.number(digits: 2),
      s: Faker::Number.number(digits: 2),
      m: Faker::Number.number(digits: 2),
      l: Faker::Number.number(digits: 2),
      xl: Faker::Number.number(digits: 2),
    }
  )
end

