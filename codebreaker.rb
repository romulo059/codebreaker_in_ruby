# APP Codebreaker - Rômulo Guedes Ferreira - 11/06/2019

# Sua missão é implementar uma versão em Ruby do jogo Codebreaker.
# O jogo pode ser jogado por um ou dois jogadores, sendo um deles o criador do código e o outro o decifrador do código.
# O código é uma sequencia de 6 números de 1 à 6. 
# Ao iniciar o jogo, o criador do código deve inserir uma sequência de números, como descrito acima (e.g. 435612).
# Após isso, o decifrador tem 8 chances para tentar decifrar o código criado.
# A cada tentativa feita pelo decifrador, fica mais fácil descobrir a sequência de números.
# Suponha que a sequência seja 334211. 
# O decifrador testará a sequência 316652. A sequência está errada, porém o número 3, por estar na posição correta da 
# sequência, terá uma indicação de correto (e.g. coloração verde). Já os números 1 e 2 terão também uma indicação que
# estão presentes na sequência a ser descoberta, porém em posições diferentes da tentativa (e.g. coloração vermelha). 
# Na opção de um jogador, o computador sempre será o criador do código. Assim, o código gerado será uma sequência
# aleatória de números gerada. Se quiser colocar a opção de ser o decifrador, serão pontos extras ;)
# O jogo acaba quando o decifrador desvenda o código ou quando 8 turnos se passarem.
# A interface do jogo pode ser feita no próprio terminal, por linha de comando.

# Variáveis
require 'colorize'

menu_geral = 0
valores = []
valoresadivinhar = []

  puts "Bem-vindo ao Game Codebreaker" 
  
  while menu_geral != 3

    puts "\nMENU" # Título
    
    puts "\n1 - Ser o criador do código" # Opção 01 - Selecionar para ser o criador do código
    puts "2 - Ser o decifrador do código" # Opção 02 - Selecionar para ser o decifrador do código
    puts "3 - Sair" # Opção 03 - Sair do Game
    
    puts "\nEscolha uma das opções: "
    
    menu_geral = gets.to_i
    
      if (menu_geral < 1 || menu_geral > 3) # Caso o usuário insira um valor inválido
        require 'colorize'
        puts "\nVocê digitou uma opção inválida!".colorize(:red)
        
      end
    
    # Como fazer um Do-While?
  
    #-------------------------------------------------------------------------

    case menu_geral
    
      when 1
        
        	
	        system "clear"

	        # OPÇÃO 01 - Ser o criador do código
	        
	        puts "Você escolheu: Ser o criador do código"
	        
	        puts "\nDigite uma sequência de 6 números: "
	        
	        puts "\nObs: Só é permitido números de 1 à 6 ;)"
	        
	        #for(int i=0; i<array.length; i++)
	        
	        for i in 1..6 do
	          puts "\n#{i}ª Posição: " # Campo para o usuário inserir as 6 posições
	          valores[i] = gets.chomp.to_i
	        end

	        system "clear"
	    loop do

	        puts "Tente adivinhar o código do seu colega :)"
	        
	        for i in 1..6 do
	          puts "\n#{i}ª Posição: " # Campo para o usuário inserir as 6 posições
	          valoresadivinhar[i] = gets.to_i
	        end

	        puts "\nVocê digitou: #{valoresadivinhar[1]}, #{valoresadivinhar[2]}, #{valoresadivinhar[3]}, #{valoresadivinhar[4]}, #{valoresadivinhar[5]}, #{valoresadivinhar[6]}"

	        
	        for i in 1..6 do
	          if valoresadivinhar[i] == valores[i]
	            puts "\nVocê adivinhou o valor da #{i}ª posição: #{i}".colorize(:green)
	          end
	        end
	        
	        puts "_______________________________"
	        
	        # Dica ao usuário para que o mesmo possa descobrir a sequência correta
	       
	        for i in 1..6 do
	          for j in 1..6 do
	            if valoresadivinhar[i] == valores[j] && i != j
	              puts "\nO número #{i} está na posição errada!".colorize(:red)
	            end 
	          end
	        end
	        
	        h = true

			for i in 0..6 do        
				if valoresadivinhar[i] != valores[i]
					h = false
				end
	        end
	                        
			if h
				puts"\nPARABÉNS!!!".colorize(:yellow)
				puts"\nVocê adivinhou todas as posições!!!".colorize(:yellow)
			end

			puts "\n"

			puts "Você gostaria de tentar novamente? (y/n)"
			play_again = gets.chomp

      	break if play_again != "y"
      	end

  	  when 2

  	  	# OPÇÃO 02 - Ser o decifrador do código

  	  	system "clear"

  	  	puts "Você escolheu: Ser o decifrador do código"

        puts "\nEscolha o nível de dificuldade: "

        puts "\nMENU" # Título
    
    	puts "\n1 - Fácil" # Opção 01 - Dificuldade 1 (Fácil)
    	puts "2 - Médio" # Opção 02 - Dificuldade 2 (Médio)
    	puts "3 - Difícil" # Opção 03 - Dificuldade 3 (Difícil)
    
    	puts "\nEscolha uma das opções: "
    
    	menu_geral = gets.to_i		

    	system "clear"

    	puts "Gerando código..."

    	case menu_geral
    		
    		when 1 #// Dificuldade: Fácil

    		loop do

	    		facil = []

	    		facil[1] = 1
	            facil[2] = 2
	            facil[3] = 3
	            facil[4] = 4
	            facil[5] = 5
	            facil[6] = 6

	            puts "\nOK! Tente adivinhar o código que a máquina gerou :D"

	            for i in 1..6 do
	          		puts "\n#{i}ª Posição: " # Campo para o usuário inserir as 6 posições
	          		valoresadivinhar[i] = gets.to_i
	        	end

	        	puts "\nVocê digitou: #{valoresadivinhar[1]}, #{valoresadivinhar[2]}, #{valoresadivinhar[3]}, #{valoresadivinhar[4]}, #{valoresadivinhar[5]}, #{valoresadivinhar[6]}"

	        	for i in 1..6 do
	          		if valoresadivinhar[i] == facil[i]
	            		puts "\nVocê adivinhou o valor da #{i}ª posição: #{valoresadivinhar[i]}".colorize(:green)
	          		end
	        	end

	        	# Dica ao usuário para que o mesmo possa descobrir a sequência correta
	       		
	       		puts "_______________________________"

	        	for i in 1..6 do
	          		for j in 1..6 do
	            		if valoresadivinhar[i] == facil[j] && i != j
	            			require 'colorize'
	              			puts "\nO número #{i}/#{j} está na posição errada!".colorize(:red)
	            		end 
	          		end
	        	end
	        
	        	h = true

				for i in 0..6 do        
					if valoresadivinhar[i] != facil[i]
						h = false
					end
	        	end
	                        
				if h
					require 'colorize'
					puts"\nPARABÉNS!!!".colorize(:yellow)
					puts"\nVocê adivinhou todas as posições!!!".colorize(:yellow)
				end	

				puts "\n"

				puts "Você gostaria de tentar novamente? (y/n)"
		  		play_again = gets.chomp

    		break if play_again != "y"
    		end 

    		when 2 #// Dificuldade: Médio

    		loop do

	    		medio = []

	    		medio[1] = 1
	            medio[2] = 3
	            medio[3] = 2
	            medio[4] = 6
	            medio[5] = 5
	            medio[6] = 4

	            puts "\nOK! Tente adivinhar o código que a máquina gerou :D"

	            for i in 1..6 do
	          		puts "\n#{i}ª Posição: " # Campo para o usuário inserir as 6 posições
	          		valoresadivinhar[i] = gets.to_i
	        	end

	        	puts "\nVocê digitou: #{valoresadivinhar[1]}, #{valoresadivinhar[2]}, #{valoresadivinhar[3]}, #{valoresadivinhar[4]}, #{valoresadivinhar[5]}, #{valoresadivinhar[6]}"

	        	for i in 1..6 do
	          		if valoresadivinhar[i] == medio[i]
	          			require 'colorize'
	            		puts "\nVocê adivinhou o valor da #{i}ª posição: #{i}".colorize(:green)
	          		end
	        	end

	        	# Dica ao usuário para que o mesmo possa descobrir a sequência correta
	       		
	       		puts "_______________________________"

	        	for i in 1..6 do
	          		for j in 1..6 do
	            		if valoresadivinhar[i] == medio[j] && i != j
	            			require 'colorize'
	              			puts "\nO número #{i} está na posição errada!".colorize(:red)
	            		end 
	          		end
	        	end
	        
	        	h = true

				for i in 0..6 do        
					if valoresadivinhar[i] != medio[i]
						h = false
					end
	        	end
	                        
				if h
					require 'colorize'
					puts"\nPARABÉNS!!!".colorize(:yellow)
					puts"\nVocê adivinhou todas as posições!!!".colorize(:yellow)
				end	

				puts "\n"

				puts "Você gostaria de tentar novamente? (y/n)"
	  			play_again = gets.chomp

    		break if play_again != "y"
    		end

    		when 3

    		loop do

	    		dificil = []

	    		dificil[1] = 4
	            dificil[2] = 6
	            dificil[3] = 5
	            dificil[4] = 1
	            dificil[5] = 3
	            dificil[6] = 2

	            puts "\nOK! Tente adivinhar o código que a máquina gerou :D"

	            for i in 1..6 do
	          		puts "\n#{i}ª Posição: " # Campo para o usuário inserir as 6 posições
	          		valoresadivinhar[i] = gets.to_i
	        	end

	        	puts "\nVocê digitou: #{valoresadivinhar[1]}, #{valoresadivinhar[2]}, #{valoresadivinhar[3]}, #{valoresadivinhar[4]}, #{valoresadivinhar[5]}, #{valoresadivinhar[6]}"

	        	for i in 1..6 do
	          		if valoresadivinhar[i] == dificil[i]
	          			require 'colorize'
	            		puts "\nVocê adivinhou o valor da #{i}ª posição: #{i}".colorize(:green)
	          		end
	        	end

	        	# Dica ao usuário para que o mesmo possa descobrir a sequência correta
	       		
	       		puts "_______________________________"

	        	for i in 1..6 do
	          		for j in 1..6 do
	            		if valoresadivinhar[i] == dificil[j] && i != j
	            			require 'colorize'
	              			puts "\nO número #{i} está na posição errada!".colorize(:red)
	            		end 
	          		end
	        	end
	        
	        	h = true

				for i in 0..6 do        
					if valoresadivinhar[i] != dificil[i]
						h = false
					end
	        	end
	                        
				if h
					require 'colorize'
					puts"\nPARABÉNS!!!".colorize(:yellow)
					puts"\nVocê adivinhou todas as posições!!!".colorize(:yellow)
				end	
				puts "\n"

			puts "Você gostaria de tentar novamente? (y/n)"
  			play_again = gets.chomp

  			break if play_again != "y"
  			end
  		end
	end
end