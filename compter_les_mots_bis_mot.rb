#puts File.size?( "shakespeare.txt" ) # Nombre des caractères (byte)



def get_file_as_string(filename)
	dictionnaire = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
	tabAssoc = Hash.new(0) #initialiser la valeur d'un tableau associatif
	
	f = File.open(filename, "r")
	f.each_line do |line|
		lettre = line.downcase
		lettre = lettre.split" "
		for i in 0..lettre.length-1
				each_word = lettre[i]
				if dictionnaire.include?(each_word)
					#incrementation += 1
					tabAssoc[each_word] += 1
				end 
		end
		#data += line
	end
	return tabAssoc
end

txt_data = get_file_as_string('shakespeare.txt') # == txt_data.to_s
#espace = 1, retur à la ligne = 1

#varTab = txt_data.split" " #tableau par mot


puts txt_data
