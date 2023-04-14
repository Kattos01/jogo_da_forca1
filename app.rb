=begin
Estruturando o arquivo
1- Escolher o filme de uma lista e os dados do filme
2- Montar a forca
3- Escolher letra
4- Resultado
=end

class Filme
	attr_accessor :nome, :ano, :diretor, :descricao

	def initialize(nome = nil, ano = 0, diretor = nil, descricao = nil)
		@nome = nome
		@ano = ano
		@diretor = diretor
		@descricao = descricao
	end

	def mascarar_filme
		qtde_de_palavras = nome.split
		cont_palavras = qtde_de_palavras.length
		count = 0
		mask = "_ "
		filme_mascarado_novo = nil

		until count == cont_palavras
			count += 1
			filme_mascarado_novo = qtde_de_palavras[qtde_palavras - 1].length.times {mask}
			filme_mascarado = filme_mascarado_novo
		end
	end

end

aleat = rand(0..39) * 4 + 1
numero_linha = 0
nome1 = nil
ano1 = 0
diretor1 = nil
descricao1 = nil

		File.open('\Users\rtkat\Dev\Projeto\Lib\Documento.txt', 'r').each_line do |arq|
			numero_linha += 1
			if aleat == numero_linha
				nome1 = arq
			end
			if aleat + 1 == numero_linha
				ano1 = arq.to_i
			end
			if aleat + 2 == numero_linha
				diretor1 = arq
			end
			if aleat + 3 == numero_linha
				descricao1 = arq
			end
		end

lista_filme = Filme.new(nome1, ano1, diretor1, descricao1)

lista_filme.mascarar_filme

puts filme_mascarado