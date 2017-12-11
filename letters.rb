@num = []
puts "\nGive me a phrase and I will find the word with the most repeated letters!"

def parse(word)
  letter_counts = []
  word_arr = word.split("").to_a
  word_arr.each { |letter| letter_counts.push(word_arr.count(letter)) }
  @num.push(letter_counts.index(letter_counts.max))
end

input = gets.strip
input_arr = input.split(" ")
input_arr.each{ |word| parse(word)}
puts "\n" + input_arr[@num.index(@num.max)].capitalize + " has the highest number of repeated letters.\n "