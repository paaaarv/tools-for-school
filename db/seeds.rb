# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@c1 = Category.find_or_create_by(name: "Books")
@c2 = Category.find_or_create_by(name: "Furniture")
@c3 = Category.find_or_create_by(name: "Miscellaneous")

@s1 = Supply.find_or_create_by(name: "Tom Sawyer", price: "7.99", quantity: 30, description: "Need 30 books for 7th grade class.", category_id: 1)
@s2 = Supply.find_or_create_by(name: "Bookshelves", price: "70", quantity: 3, description: "Need new bookshelves for classroom.", category_id: 2)
@s3 = Supply.find_or_create_by(name: "Binders", price: "4.99", quantity: 11, description: "Need binders to organize classroom", category_id: 3)


@user = User.new(email: "parv@gmail.com", password: "parvathi")
@admin = User.new(email: "pkumar@trinity.edu", password: "password")
