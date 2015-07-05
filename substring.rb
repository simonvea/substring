def substrings(words, dictionary)
    
    frequencies = Hash.new(0)
    ord = words.split #legger ordene til et array
    
    ord.each do |word|
    
        if dictionary.include?word 
        
            frequencies[word] +=1 #legger ord til en liste pluss antall 
        
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