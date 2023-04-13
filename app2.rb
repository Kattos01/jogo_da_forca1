#Escolhendo o filme

aleat = rand(0..39) * 4 + 1
numero_linha = 0
nome_filme = nil
ano_filme = nil
nome_diretor = nil
descricao = nil

File.open('\Users\rtkat\Dev\Projeto\Lib\Documento.txt', 'r').each_line do |arq|
	numero_linha += 1
	if aleat == numero_linha
		nome_filme = arq
	end
	if aleat + 1 == numero_linha
		ano_filme = arq
	end
	if aleat + 2 == numero_linha
		nome_diretor = arq
	end
	if aleat + 3 == numero_linha
		descricao = arq
	end
end

puts nome_filme
puts ano_filme
puts nome_diretor
puts descricao


#Codificando o filme
puts "Advinhe o filme?"
qtde_de_palavras = nome_filme.split
	if qtde_de_palavras.length == 1
		qtde_de_palavras[0].length.times {print "_ "}
		puts
	elsif qtde_de_palavras.length == 2
		qtde_de_palavras[0].length.times {print "_ "}
		print "   "
		qtde_de_palavras[1].length.times {print "_ "}
		puts
	elsif qtde_de_palavras.length == 3
		qtde_de_palavras[0].length.times {print "_ "}
		print "   "
		qtde_de_palavras[1].length.times {print "_ "}
		print "   "
		qtde_de_palavras[2].length.times {print "_ "}
		puts
	elsif qtde_de_palavras.length == 4
		qtde_de_palavras[0].length.times {print "_ "}
		print "   "
		qtde_de_palavras[1].length.times {print "_ "}
		print "   "
		qtde_de_palavras[2].length.times {print "_ "}
		print "   "
		qtde_de_palavras[3].length.times {print "_ "}
		puts
	elsif qtde_de_palavras.length == 5
		qtde_de_palavras[0].length.times {print "_ "}
		print "   "
		qtde_de_palavras[1].length.times {print "_ "}
		print "   "
		qtde_de_palavras[2].length.times {print "_ "}
		print "   "
		qtde_de_palavras[3].length.times {print "_ "}
		print "   "
		qtde_de_palavras[4].length.times {print "_ "}
		puts
	elsif qtde_de_palavras.length == 6
		qtde_de_palavras[0].length.times {print "_ "}
		print "   "
		qtde_de_palavras[1].length.times {print "_ "}
		print "   "
		qtde_de_palavras[2].length.times {print "_ "}
		print "   "
		qtde_de_palavras[3].length.times {print "_ "}
		print "   "
		qtde_de_palavras[4].length.times {print "_ "}
		print "   "
		qtde_de_palavras[5].length.times {print "_ "}
		puts
end

vitoria = false
count_erros = 0
while vitoria == false
	puts "Escolha uma letra!"
	chute1 = gets.to_s
	puts chute1.length - 1
	if chute1.length - 1 == 1
		
	else
		puts "Coloque apenas um caracter!"
	end
end

#Contador de Linhas
#text = ''
#line_count = 0
#File.open('\Users\rtkat\Dev\Projeto\Lib\Documento.txt').each do |line|
#	line_count += 1
#	text << line
#end
#puts"O Filme selecionado foi.."
#puts"são #{line_count} linhas"