# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.create!()

Raw.create(name: "acetone", code: "1-1", density: 784)
Raw.create(name: "MEK", code: "1-2", density: 805)

# create_table :products do |t|
#   t.string :name
#   t.string :type
#   t.float :density
#   t.string :image_url
#   t.text :description

Product.create!(name: "Solvent Blend", type: "", density: "", image_url: "", description: "")
ProductRaw.create!(product_id: 1, raw_id: 1)
ProductRaw.create!(product_id: 1, raw_id: 2)
ProductRaw.create!(product_id: 1, raw_id: 3)
ProductRaw.create!(product_id: 1, raw_id: 4)
ProductRaw.create!(product_id: 1, raw_id: 5)

Product.create!(name: "Some Epoxy", type: "", density: "", image_url: "", description: "")
ProductRaw.create!(product_id: 2, raw_id: 1)
ProductRaw.create!(product_id: 2, raw_id: 2)
ProductRaw.create!(product_id: 2, raw_id: 3)
ProductRaw.create!(product_id: 2, raw_id: 4)
ProductRaw.create!(product_id: 2, raw_id: 5)
ProductRaw.create!(product_id: 2, raw_id: 6)
