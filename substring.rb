def substrings(words, dictionary)
    
    frequencies = Hash.new(0)
    samling = words.split #legger ordene til et array
    bokstav_array = []
    sjekkord = ""
    ord = ""
    ordbok = []
    
    #fjerner store bokstaver i ordbok
    
    dictionary.each do |w|
        
        ordbok.push(w.downcase)
    end
        
        
    #går igjennom hvert ord
    
    samling.each do |word|
        
        ord = word.downcase
        
        #splitter ordet til et array av bokstavene
    
        ord.each_char do |i|
            
            bokstav_array.push(i)
            
        end
        
        #Lager mulige kombinasjoner av bokstavene
           
        bokstav_array.each_with_index do |bokstav, index|
            
            j = index + 1
            k = index + 1
            
            while j < bokstav_array.length do
            
                 sjekkord = bokstav + ord[k..j]
            
                #Sjekker om det matcher ordbok
            
                if ordbok.include?sjekkord 
        
                    frequencies[sjekkord] +=1 #legger ord til en liste pluss antall 
                end

                j +=1
                
            end
            
            
        end
        
        bokstav_array = []
        
    end
    
    puts frequencies
    

end

#test fra odin project:

ordbok =  ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", ordbok)

# Skal bli => {"below"=>1, "low"=>1}
# => funker!
    