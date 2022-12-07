input = File.open('input.txt')
lines = input.read.split("\n")
matches = {}
point = {
  'A' => 1,
  'X' => 1,
  'B' => 2,
  'Y' => 2,
  'C' => 3,
  'Z' => 3
}
lines.each_with_index do |item, index|
  player1 = item.split(' ')[0]
  player2 = item.split(' ')[1]
  player1_point = point[player1]
  player2_point = point[player2]

  matches[index] =
    if player2_point == player1_point
      player2_point + 3
    elsif [1, 3].include?(player2_point) && [1, 3].include?(player1_point)
      additional_point = player2_point == 1 ? 6 : 0
      player2_point + additional_point
    elsif player2_point > player1_point
      player2_point + 6
    else
      player2_point
    end
end

# rock - paper - sciccors
# win = 6
# lose = 0
# draw = 3
puts matches.values.sum
