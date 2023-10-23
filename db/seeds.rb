require 'csv'

Product.destroy_all
Category.destroy_all

csv_file = Rails.root.join('db/products.csv')
csv_data = File.read(csv_file)
products = CSV.parse(csv_data, headers: true, encoding: 'iso-8859-1') # Including encoding just in case

products.each do |product_row|
  category_name = product_row['category_name'] # Adjust this field name based on your CSV header
  category = Category.find_or_create_by(name: category_name)

  category.products.create!(
    title: product_row['title'],
    description: product_row['description'],
    price: product_row['price'],
    stock_quantity: product_row['stock_quantity']
  )
end

puts "Seeded #{Category.count} categories and #{Product.count} products."
