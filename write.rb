File.open('lista.txt', 'a') do |file|
    loop do
      puts "Digite um item para adicionar à lista (ou digite 'sair' para terminar):"
      item = gets.chomp
      break if item.downcase == 'sair'
      file.puts(item)
    end
  end
  