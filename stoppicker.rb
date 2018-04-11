def tracker_du_dimanche(tab)
    tab1 = [ ]
    tab2 = [ ] 
    index = 0
    for i in 1..tab.length-1
        for j in i..tab.length-1
        tab2 << (tab[j] - tab[index])
        tab1 << [index, j]
        end
        index = index + 1       
    end
    max = 0
    for i in 1..tab2.length-1
        if tab2[max] < tab2[i]
            max = i
        end
    end
    print tab1[max]
end

tracker_du_dimanche([17,3,6,9,15,8,6,1,10])