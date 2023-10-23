require 'faker'

# Number of products to seed
num_products = 676

num_products.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 2), # Faking a description with 2 sentences.
    price: Faker::Commerce.price(range: 0..100.0),
    stock_quantity: Faker::Number.between(from: 1, to: 1000)
  )
end

puts "Seeded #{num_products} products!"
