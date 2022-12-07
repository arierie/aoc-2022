input = File.open('input.txt')
lines = input.read.split("\n\n")
bags = {}
lines.each_with_index do |_, index|
  lines[index].split("\n").each do |item|
    bags[index] = bags[index].to_i + item.to_i
  end
end

new_bags = bags.sort_by { |_, v| v }
               .to_h
               .values
               .reverse
puts new_bags.take(3).sum
