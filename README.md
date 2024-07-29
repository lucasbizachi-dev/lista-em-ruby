# Lista de Compras

Este é um simples script Ruby para gerenciar uma lista de compras. Ele permite que você visualize os itens atuais na lista e adicione novos itens conforme necessário.

## Como usar

1. Crie um arquivo chamado `lista.txt` no mesmo diretório do script.
2. Adicione itens iniciais à sua lista no arquivo `lista.txt` (opcional).

## Código

```ruby
puts '** MINHA LISTA DE COMPRAS **'

file = File.open('lista.txt')
file.each do |line|
    puts line
end

File.open('lista.txt', 'a') do |file|
    loop do
        puts "Digite um item para adicionar à lista (ou digite 'sair' para terminar):"
        item = gets.chomp
        break if item.downcase == 'sair'
        file.puts(item)
    end
end
```
## Funcionamento

- O script começa imprimindo ** MINHA LISTA DE COMPRAS **.
- Em seguida, abre o arquivo `lista.txt` e exibe seu conteúdo linha por linha.
- Depois, abre o arquivo `lista.txt` no modo de acréscimo (`'a'`) e entra em um loop que permite ao usuário adicionar novos itens à lista.
- O usuário pode digitar 'sair' para terminar o loop e encerrar o programa.

## Requisitos

- Ruby instalado na sua máquina.

## Executando o Script

Para executar o script, abra seu terminal, navegue até o diretório onde o script está localizado e execute:

```sh
ruby nome_do_script.rb
```

