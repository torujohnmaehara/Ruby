puts "最初はグー、じゃんけん..."

def janken
  puts"[0]:グー[1]:チョキ[2]:パー"
  players_hand =gets.to_i
  program_hand =rand(0..2)
  jankens = ["グー","チョキ","パー"]
  puts "あなたの手:#{jankens[players_hand]},相手の手:#{jankens[program_hand]}"

  if players_hand == program_hand
    puts "あいこで"
    return true
  elsif (players_hand == 0 && program_hand == 2)||(players_hand == 1 && program_hand == 2)||(players_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    return false
  elsif (players_hand == 0 && program_hand == 1)||(players_hand == 1 && program_hand == 0)||(players_hand == 2 && program_hand == 1)
    puts "あなたの負けです"
    return false
  else
    puts "入力された値が無効です"
  end
end

next_game = true
while next_game
  next_game = janken
end