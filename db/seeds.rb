Laundry.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
  email = ['erika', 'anderson', 'diego', 'tabata', 'carol' ]
  email.each do |name|
    f = User.new
    f.email = "#{name}@gmail.com"
    f.password = name
    f.save
  end


  l = Laundry.new
  l.name = "5asec Pinheiros"
  l.address = "R. Artur de Azevedo, 1339"
  l.cnpj = 'assets/5asec.jpg'
  l.price_kg = rand (80..150)
  l.capacity = rand (8..12)
  l.rating = rand(4..10)
  l.user_id = 1
  l.save

  a = Laundry.new
  a.name = "BonaSecco Perdizes"
  a.address = "Av. Marquês de São Vicente, 2219"
  a.cnpj = "assets/bonasecco.jpg"
  a.price_kg = rand (80..150)
  a.capacity = rand (8..12)
  a.rating = rand(4..10)
  a.user_id = 1
  a.save

  b = Laundry.new
  b.name = "Laundromat da Villa"
  b.address = "Rua Harmonia, 876"
  b.cnpj = "assets/laundromat.jpg"
  b.price_kg = rand (80..150)
  b.capacity = rand (8..12)
  b.rating = rand(4..10)
  b.user_id = 1
  b.save

  c  = Laundry.new
  c.name = "Lava e Leva Alto de Pinheiros"
  c.address = "Rua Pio XI, 1897"
  c.cnpj = "assets/lavaeleva.jpg"
  c.price_kg = rand (80..150)
  c.capacity = rand (8..12)
  c.rating = rand(4..10)
  c.user_id = 2
  c.save

  d = Laundry.new
  d.name = "Dry Clean USA - Pinheiros"
  d.address = "R. Artur de Azevedo, 553"
  d.cnpj = "assets/drycleanusa.png"
  d.price_kg = rand (80..150)
  d.capacity = rand (8..12)
  d.rating = rand(4..10)
  d.user_id = 3
  d.save
