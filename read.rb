puts '** MINHA LISTA DE COMPRAS **'

file = File.open('lista.txt')
file.each do |line|
    puts line
end
