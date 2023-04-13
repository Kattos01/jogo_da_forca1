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
				ano1 = arq
			end
			if aleat + 2 == numero_linha
				diretor1 = arq
			end
			if aleat + 3 == numero_linha
				descricao1 = arq
			end
		end
a = Filme.new(nome1, ano1, diretor1, descricao1)

puts nome1
puts a.nome


