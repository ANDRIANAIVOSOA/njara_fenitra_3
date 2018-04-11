#def jean_michel_data(corpus, dictionnaire)
corpus = "goi"
	lettre = corpus.to_s
	tabAssoc = {}
	#avadika tableau associative
	dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

	for row in 0..lettre.length-1
		for col in row..lettre.length-1

			each_word = lettre[row..col] 
			if dictionary.include?(each_word)
				tabAssoc[each_word] = 1
			end 
		end
	end

	#return tabAssoc
	#prendre le valeur
	puts tabAssoc.values
	#detail
	puts tabAssoc
# end

# def ask_for_mot
#   print "Nombre le mot : "
#   mot = gets.chomp
#   return mot
# end

# def perform
# 	dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
# 	mot = ask_for_mot
# 	puts jean_michel_data(mot, dictionary)
# end

# perform

