def chiffre_de_cesar(text, cle)
	asciiChiffre = []
	textChiffe = ""
	textString = text.to_s
	for i in 0..textString.length-1
		asciiChiffre[i] = textString[i].ord
		
		if (["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]).include?(textString[i])
			if asciiChiffre[i] > ("Z".ord - cle)
				asciiChiffre[i] = (asciiChiffre[i]+cle) - 26
			else
				asciiChiffre[i] = textString[i].ord + cle;
			end
			textChiffe += asciiChiffre[i].chr 
		elsif (["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]).include?(textString[i])
			
				if asciiChiffre[i] > ("z".ord - cle)
					asciiChiffre[i] = (asciiChiffre[i]+cle)-26
				else
					asciiChiffre[i] = textString[i].ord + cle;
				end 
			textChiffe += asciiChiffre[i].chr 
		
		else
			textChiffe += asciiChiffre[i].chr
		end
	end
	return textChiffe
end

def ask_for_text_numbers
  print "Nombre text : "
  text = gets.chomp
  print"Donner la cle :"
  cle = gets.chomp.to_i 
  return text,cle
end

def perform
	text,cle = ask_for_text_numbers
	puts chiffre_de_cesar(text, cle)
end

perform

