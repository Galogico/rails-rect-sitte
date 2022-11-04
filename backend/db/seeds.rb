
Comida.delete_all
20.times do
    Comida.create(
        typeC: Faker::Food.fruits,
        qtd: Faker::Number.between(from: 1, to: 100),
        img_url: "https://yt3.ggpht.com/purMyuBdyrlu6_bmHk7NtedF1_mhI8hQ_XjqXy2ctAf7Kgl8ZdpLDNcWL-LQUrCLKewkoAu4Nw=s900-c-k-c0x00ffffff-no-rj"
    )
end

Comida.all.each do |comida|
    puts "tipo de comida: #{comida.typeC}"
    puts "Quanto vc comprou: #{comida.qtd}"
    puts "*******************************"
end