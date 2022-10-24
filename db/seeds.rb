# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Fournisseur.delete_all

fournisseurs = Fournisseur.create([
    {
      nom: "Nike",
      provenance: "Chine",
      telephone: "01 70 48 90 73",
      email: "contact@nike.com"
    },
    {
      nom: "New Balance",
      provenance: "Taiwan",
      telephone: "0 805 10 99 46",
      email: "contact@newbalance.com"
    }
                                  ])

articles = Article.create([
    {
      nom: "Air Force One",
      marque: fournisseurs.first,
      prix: 130,
      categorie: "Chaussures"
    },
    {
      nom: "New Balance 550",
      marque: fournisseurs.find(2),
      prix: 150,
      categorie: "Chaussures"
    }
])