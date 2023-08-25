User.create!([
  {name: "Sam", email: "sam@beerdrinkers.com", password_digest: "$2a$12$n4qJvg2n/1N0PMCs1ZaOiebuuz4qhoCHJTvqdJXZSoGFGg0o.YLD6", admin: false, order_id: nil},
  {name: "Ben", email: "ben@shockingdiscoveries.com", password_digest: "$2a$12$E0JQbl7ueBwuxOVCQJ5rd.GmwgfOuvM1FDzPSS9e6tYvuEJtDeFOa", admin: false, order_id: nil},
  {name: "Abe", email: "abe@coolhatclub.com", password_digest: "$2a$12$T5cAhLQH1InNJCs0mWc8XO6BPk3aVUJd0NxTMBJ3csY9Vlxafy702", admin: false, order_id: nil},
  {name: "George", email: "george@crossingtheriver.com", password_digest: "$2a$12$ilxiOzyGm46Cf1KV8RSWtuGTPAedciobpnJakLbfMEs6/fo/jFiGq", admin: true, order_id: nil}
])
Supplier.create!([
  {name: "ASUS", email: "supplier@asus.com", phone_number: "8008675309"},
  {name: "MSI", email: "supplier@msi.com", phone_number: "8001324354"},
  {name: "Corsair", email: "supplier@corsair.com", phone_number: "8009786756"},
  {name: "Newegg", email: "supplier@newegg.com", phone_number: "8001234567"},
  {name: "Razer", email: "supplier@razer.com", phone_number: "8001928374"},
  {name: "Amazon", email: "supplier@amazon.com", phone_number: "8001425364"}
])
Product.create!([
  {name: "Seasonic Prime TX-850", price: "200.0", description: "Fully modular power supply outputting up to 850 watts with 80+ Titanium efficiency.", quantity: 12, supplier_id: 4, images: nil},
  {name: "G.Skill Trident Z RGB 6400 CL32 (64GB x 4)", price: "500.0", description: "It has pretty lights on it, I guess.", quantity: 6, supplier_id: 4, images: nil},
  {name: "Samsung 980 Pro 1TB", price: "60.0", description: "One of the fastest Gen 4 NVME M.2 SSDs available.", quantity: 14, supplier_id: 4, images: nil},
  {name: "Team Group T-Force Cardea Z44Q 4TB", price: "210.0", description: "Large capacity drive useful as a boot drive or game directory.", quantity: 10, supplier_id: 4, images: nil},
  {name: "Lian-Li SL120 Infinity x10", price: "300.0", description: "Easy-to-setup fans with good air flow and static pressure, plus RGB lighting and infinity mirrors.", quantity: 25, supplier_id: 1, images: nil},
  {name: "Katana V2", price: "349.99", description: "Great soundbar meant for desk use. Includes sub and RGB lighting.", quantity: 4, supplier_id: 1, images: nil},
  {name: "Asus Maximus Z790 Hero", price: "600.0", description: "I just needed a motherboard with socket compatibility, but it's really nice.", quantity: 9, supplier_id: 1, images: nil},
  {name: "Lian-Li 011 Dynamic Evo", price: "155.0", description: "Great case for airflow and cable management, also fully modular.", quantity: 15, supplier_id: 2, images: nil},
  {name: "Corsair H150i Elite LCD", price: "270.0", description: "A very good and stylish CPU cooler with an LCD display that can show temps, clock speeds, voltages, or funny gifs if you want to go that route.", quantity: 14, supplier_id: 3, images: nil},
  {name: "Thermalright CPU Contact Frame", price: "18.0", description: "Easy solution for high CPU temps.", quantity: 7, supplier_id: 3, images: nil},
  {name: "i9 13900k", price: "550.0", description: "A 24 core processor that handles gaming and work very well. Again, suck it AMD.", quantity: 8, supplier_id: 3, images: nil},
  {name: "EVGA RTX3080ti FTW3 Ultra", price: "1299.99", description: "Great graphics card for gaming.", quantity: 12, supplier_id: 2, images: 1},
  {name: "Alienware AW3423DW", price: "1299.99", description: "God of gaming monitors.", quantity: 12, supplier_id: 9, images: 4}
])
Order.create!([
  {user_id: 2, subtotal: "1.0", tax: "54.0", total: "654.0"},
  {user_id: 1, subtotal: "1.0", tax: "54.0", total: "654.0"},
  {user_id: 1, subtotal: "1.0", tax: "5413.0", total: "654234.0"},
  {user_id: 1, subtotal: "550.0", tax: "49.5", total: "599.5"},
  {user_id: 2, subtotal: "240.0", tax: "21.6", total: "261.6"}
])
Image.create!([
  {url: "https://m.media-amazon.com/images/I/815BH+jP6xS._AC_SL1500_.jpg, https://m.media-amazon.com/images/I/81B2tCDJWgS._AC_SL1500_.jpg", product_id: 1}
])
CategoryProduct.create!([
  {product_id: 2, category_id: 3},
  {product_id: 14, category_id: 1},
  {product_id: 9, category_id: 2},
  {product_id: 9, category_id: 3},
  {product_id: 10, category_id: 2},
  {product_id: 10, category_id: 3},
  {product_id: 1, category_id: 3},
  {product_id: 5, category_id: 1}
])
Category.create!([
  {name: "Storage"},
  {name: "Cooling"},
  {name: "Performance Parts"},
  {name: "RGB Equipped"}
])
CartedProduct.create!([
  {product_id: 5, user_id: 2, quantity: 2, status: "in_cart", order_id: 0},
  {product_id: 5, user_id: 2, quantity: 2, status: "in_cart", order_id: 0},
  {product_id: 5, user_id: 2, quantity: 2, status: "in_cart", order_id: 0},
  {product_id: 5, user_id: 2, quantity: 2, status: "in_cart", order_id: 0},
  {product_id: 5, user_id: 2, quantity: 2, status: "in_cart", order_id: 0},
  {product_id: 5, user_id: 1, quantity: 2, status: "in_cart", order_id: 0},
  {product_id: 5, user_id: 1, quantity: 2, status: "in_cart", order_id: 0},
  {product_id: 5, user_id: 1, quantity: 2, status: "carted", order_id: 0},
  {product_id: 5, user_id: 2, quantity: 2, status: "purchased", order_id: nil},
  {product_id: 5, user_id: 2, quantity: 2, status: "purchased", order_id: nil}
])
