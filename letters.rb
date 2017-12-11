def parse(word)
  letter_counts = []
  word_arr = word.split("").to_a
  word_arr.each { |letter| letter_counts.push(word_arr.count(letter)) }
  @num.push(letter_counts.index(letter_counts.max))
  check_nums(word_arr)
  @ind += 1
end

def check_nums(word_arr)
  # puts "num #{word_arr[@num[@ind]]}"
end

@num = []
@ind = 0
input = gets.strip
input_arr = input.split(" ")
input_arr.each{ |word| parse(word)}
puts "\n" + input_arr[@num.index(@num.max)].capitalize + " has the highest number of repeated letters.\n "
# puts @num.max