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
