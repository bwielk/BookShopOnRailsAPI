# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.delete_all
Author.delete_all
Reader.delete_all
Transaction.delete_all

author1 = Author.create({name: "Herman Melville"})
author2 = Author.create({name: "Mary Shelley"})

reader1 = Reader.create({name: "Blaise"})
reader2 = Reader.create({name: "Camden"})

book1 = Book.create({title: "Mody-Dick", price: 20, words: "ggggrrrrrr, revenge", author: author1})
book2 = Book.create({title: "Frankenstein", price: 14, words: "man is the real monster", author: author2})


Transaction.create({price: 20, reader: reader2, book: book1})
Transaction.create({price: 14, reader: reader2, book: book2})
Transaction.create({price: 20, reader: reader1, book: book1})
