#Classe
class Filme
	attr_accessor :nome, :ano, :diretor, :descricao

	def initialize(nome = nil, ano = 0, diretor = nil, descricao = nil)
		@nome = nome
		@ano = ano
		@diretor = diretor
		@descricao = descricao
	end

	def testar_letra(nome_original, nome_correto, nome_atual, letras_advinhadas)
		system('cls')
		#puts nome_original
		3.times{puts ""}
				puts '            ____                            ___        ___________                           '
				puts '           |    | ____   ____   ____     __| _/____    \_   _____/____  ____   ____  _____   '
				puts '           |    |/  _ \ / ___\ /  _ \   / __ |\__  \    |    __) /    \ |  _\_/ ___/ \__  \  '
				puts '       /\__|    (  <_> ) /_/  >  <_> ) / /_/ | / __ \_  |    / (  <_> )|  |  | \__   _/ __\  '
				puts '       \________|\____/\___  / \____/  \____ |(____  /   \  /   \____/ |__|  \____> <__   /  '
				puts '                       /____/               \/     \/     \/                           \_/   '
		puts ""
		puts "Você tem que advinhar o filme abaixo!"
		puts ""
		count = 0
			until count == nome_original.length - 1
				if nome_original[count] == " "
					nome_atual = "#{nome_atual}   "
					nome_correto = "#{nome_correto}   "
				else
					nome_atual = "#{nome_atual}_ "
					nome_correto = "#{nome_correto}#{nome_original[count]} "
				end
				count += 1
			end
		puts "   #{nome_atual}"
		vencedor = false
		perdedor = false
		num_erro = 0
		while vencedor == false and perdedor == false
			puts ""
			puts "Escolha uma letra!"
			chute = gets.to_s
			acerto = false
			system('cls')
			if chute.length - 1 == 1
				3.times{puts ""}
				puts '            ____                            ___        ___________                           '
				puts '           |    | ____   ____   ____     __| _/____    \_   _____/____  ____   ____  _____   '
				puts '           |    |/  _ \ / ___\ /  _ \   / __ |\__  \    |    __) /    \ |  _\_/ ___/ \__  \  '
				puts '       /\__|    (  <_> ) /_/  >  <_> ) / /_/ | / __ \_  |    / (  <_> )|  |  | \__   _/ __\  '
				puts '       \________|\____/\___  / \____/  \____ |(____  /   \  /   \____/ |__|  \____> <__   /  '
				puts '                       /____/               \/     \/     \/                           \_/   '
				puts ""
				puts "Sua palavra ficou assim..."
				puts ""
				nome_mask = nil
				count = 0 #contador de caracteres
				letras_advinhadas = "#{letras_advinhadas}#{chute[0]}, "
				until count == nome_correto.length - 1
					letras_select = "#{chute.downcase}"
					if nome_correto[count] == " "
						nome_mask = "#{nome_mask} "
					elsif nome_correto[count].downcase == chute[0].downcase
						nome_mask = "#{nome_mask}#{nome_correto[count]}"
						acerto = true			
					else
						nome_mask = "#{nome_mask}#{nome_atual[count]}"
					end
					count += 1
				end
				nome_atual = nome_mask
				puts "   #{nome_atual}"
				puts ""
				puts "Letras selecionadas: #{letras_advinhadas}"
					if acerto == false
						num_erro += 1
						puts "Você tem #{num_erro} erro(s)"
						if num_erro == 7
							puts "Perdedor!!!!!!!!!!!!!!!!!!!!!"
							perdedor = true
						end
					end
				if nome_correto[0,nome_correto.length-1] == nome_atual
					vencedor = true
					puts ""
					puts '     _____                _                    _ _ _ '
 					puts '    |  __ \              | |                  | | | | '
 					puts '    | |__) |_ _ _ __ __ _| |__   ___ _ __  ___| | | | '
 					puts '    |  ___/ _  |  __/ _` |  _ \ / _ \  _ \/ __| | | | '
 					puts '    | |  | (_| | | | (_| | |_) |  __/ | | \__ \_|_|_| '
 					puts '    |_|   \__,_|_|  \__,_|_.__/ \___|_| |_|___(_|_|_) '
 					puts ""
 					puts ""
					puts "VOCÊ É UM CABEÇUDO!!! OU TEM MAIS DE 70 ANOS DE IDADE!!!"
					puts ""
					3.times{puts "                Parabéns!!!"}
				end
			else
				3.times{puts ""}
				puts '            ____                            ___        ___________                           '
				puts '           |    | ____   ____   ____     __| _/____    \_   _____/____  ____   ____  _____   '
				puts '           |    |/  _ \ / ___\ /  _ \   / __ |\__  \    |    __) /    \ |  _\_/ ___/ \__  \  '
				puts '       /\__|    (  <_> ) /_/  >  <_> ) / /_/ | / __ \_  |    / (  <_> )|  |  | \__   _/ __\  '
				puts '       \________|\____/\___  / \____/  \____ |(____  /   \  /   \____/ |__|  \____> <__   /  '
				puts '                       /____/               \/     \/     \/                           \_/   '
				puts ""
				puts "Sua palavra ficou assim..."
				puts ""
				puts "   #{nome_atual}"
				puts ""
				puts "Letras selecionadas: #{letras_advinhadas}"
			end
		end
	end
end


#Constantes
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

lista_filme.testar_letra(lista_filme.nome, "", "", "")