#puts File.size?( "shakespeare.txt" ) # Nombre des caractères (byte)
#espace = 1, retur à la ligne = 1
puts "ATTENDEZ un peu pour voir ces grosmots:"

def get_file_as_string(filename,grosmot)
	j=0;
	increment = 0
	data = []
	f = File.open(grosmot, "r")
	f.each_line do |line|
		data[j]= line.split" "
		j += 1
	end
	
	tabAssoc = Hash.new(0) #initialiser la valeur d'un tableau associatif
	fi = File.open(filename, "r")
	fi.each_line do |linei|

		lettre = linei.downcase
		lettre = lettre.split" "
		for i in 0..lettre.length-1
				each_word = lettre[i].split" "
				if data.include?(each_word)
					increment += 1
					tabAssoc[each_word] += 1
				end 
		end
	end
	puts "------------------------------------------------------------"
	puts "Il a #{increment} grosmots dans l'oeuvre de Shakeaspeare !"
	puts "------------------------------------------------------------"²²²²²²²²²²²²²
	return tabAssoc
end

txt_data = get_file_as_string('shakespeare.txt','swearWords.txt') # == txt_data.to_s

puts txt_data


