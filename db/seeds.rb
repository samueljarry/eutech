require "faker"

Stock.delete_all
Article.delete_all
Fournisseur.delete_all

20.times do

  fournisseur = Fournisseur.create(
    {
      nom: Faker::Commerce.brand,
      provenance: Faker::Address.country,
      telephone: Faker::PhoneNumber.cell_phone_in_e164,
      email: Faker::Internet.email
    }
  )

  TestPundit.create(
    {
      nom: Faker::Commerce.brand
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
      xs: xs = Faker::Number.within(range: 0..10),
      s: s = Faker::Number.within(range: 0..10),
      m: m = Faker::Number.within(range: 0..10),
      l: l = Faker::Number.within(range: 0..10),
      xl: xl = Faker::Number.within(range: 0..10),
      total: xs + s + m + l + xl
    }
  )

end

