input = File.open('input.txt')
lines = input.read.split("\n\n")
bags = {}
lines.each_with_index do |_, index|
  lines[index].split("\n").each do |item|
    bags[index] = bags[index].to_i + item.to_i
  end
end

puts bags.values.max()