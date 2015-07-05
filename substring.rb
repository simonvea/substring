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
            
            while j <= bokstav_array.length do
                
                if j < ord.length #passer på at ordet ikke er mindre enn 2
            
                    sjekkord = bokstav + ord[k..j]
            
                    #Sjekker om det matcher ordbok
            
                    if ordbok.include?sjekkord 
        
                        frequencies[sjekkord] +=1 #legger ord til en liste pluss antall 
                    end
                    
                else
                    
                    sjekkord = ord
                    
                    if ordbok.include?sjekkord 
        
                        frequencies[sjekkord] +=1 #legger ord til en liste pluss antall 
                    end
                    
                end
                
                j +=1
                
            end
            
            
        end
        
        
    end
    
    puts frequencies
    

end

ordbok = ["en", "to", "tre"]
ords = "en en fire to"
substrings(ords,ordbok)


=begin
FRA tidligere, codecademy:
puts "Gi meg tekst!"
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each {|word| frequencies[word] +=1}

frequencies = frequencies.sort_by{|word, number| number}
frequencies.reverse!

frequencies.each do |word, number|
    puts word + " " + number.to_s
end
=end




=begin
    > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

    > substrings("below", dictionary)
    => {"below"=>1, "low"=>1}
    
=end