Order.delete_all if Rails.env.development?
Laundry.delete_all if Rails.env.development?
User.delete_all if Rails.env.development?
  inputs = {roberto: "Fradique Coutinho 1350" , anderson: "Fidalga 255", tabata: "Purpurina 400",
            davisjr: "Mourato Coelho 1322", camila: "Girassol 43" }
  inputs.each do |key, value|
    f = User.new
    f.username = key
    f.address = value
    f.email = "#{key}@gmail.com"
    f.password = key
    f.save
  end


  l = Laundry.new
  l.name = "5asec Pinheiros"
  l.address = "R. Artur de Azevedo, 1339"
  l.cnpj = 'assets/5asec.jpg'
  l.price_kg = rand (80..150)
  l.capacity = rand (8..12)
  l.rating = rand(4..10)
  l.user_id = User.all[0].id
  l.save

  a = Laundry.new
  a.name = "BonaSecco Perdizes"
  a.address = "Av. Marquês de São Vicente, 2219"
  a.cnpj = "assets/bonasecco.jpg"
  a.price_kg = rand (80..150)
  a.capacity = rand (8..12)
  a.rating = rand(4..10)
  a.user_id = User.all[2].id
  a.save

  b = Laundry.new
  b.name = "Laundromat da Villa"
  b.address = "Rua Harmonia, 876"
  b.cnpj = "assets/laundromat.jpg"
  b.price_kg = rand (80..150)
  b.capacity = rand (8..12)
  b.rating = rand(4..10)
  b.user_id = User.all[2].id
  b.save

  c  = Laundry.new
  c.name = "Lava e Leva Alto de Pinheiros"
  c.address = "Rua Pio XI, 1897"
  c.cnpj = "assets/lavaeleva.jpg"
  c.price_kg = rand (80..150)
  c.capacity = rand (8..12)
  c.rating = rand(4..10)
  c.user_id = User.all[2].id
  c.save

  d = Laundry.new
  d.name = "Dry Clean USA - Pinheiros"
  d.address = "R. Artur de Azevedo, 553"
  d.cnpj = "assets/drycleanusa.png"
  d.price_kg = rand (80..150)
  d.capacity = rand (8..12)
  d.rating = rand(4..10)
  d.user_id = User.all[3].id
  d.save

  12.times do
    o = Order.new
    o.order_kg = rand(1..12)
    o.status = true
    o.user_id = User.all[1].id
    o.laundry_id = Laundry.all[rand(0..4)].id
    o.save
  end

  8.times do
    u = Order.new
    u.order_kg = rand(1..12)
    u.status = true
    u.user_id = User.all[4].id
    u.laundry_id = Laundry.all[rand(0..4)].id
    u.save
  end

  v = Order.new
  v.order_kg = rand(1..12)
  v.status = true
  v.user_id = User.all[4].id
  v.laundry_id = Laundry.all[rand(0..4)].id
  v.save
