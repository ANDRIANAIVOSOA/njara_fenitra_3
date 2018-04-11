def multiple_3_5(nbMax)
	reste3 = 0
	reste5 = 0
	somme = 0
	for i in 1..nbMax
		reste3 = i%3
		reste5 = i%5
		if (reste3 == 0) || (reste5 == 0)
			somme += i
 		end
	end
	return somme
end


def ask_for_numbers
  print("Donner un entier 999 : ")
  nbMax = gets.chomp.to_i
  return nbMax
end

def perform
  nbMax = ask_for_numbers
  puts multiple_3_5(nbMax)
end

perform
