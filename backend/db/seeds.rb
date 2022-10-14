
Comida.delete_all
20.times do
    Comida.create(
        typeC: Faker::Food.fruits,
        qtd: Faker::Number.between(from: 1, to: 100),
        img_url: "https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/77399d7f5d5451c4e8b87ea038a96bee~c5_720x720.jpeg?x-expires=1665903600&x-signature=Milpj3gdEndNwUHhRt9VpPmeriE%3D"
    )
end

Comida.all.each do |comida|
    puts "tipo de comida: #{comida.typeC}"
    puts "Quanto vc comprou: #{comida.qtd}"
    puts "*******************************"
end