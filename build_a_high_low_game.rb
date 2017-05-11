def game
  num = rand 31
  puts "Please Try to guess a number between 0 and 30"

  loop do 
    user_answer = gets.chomp.to_i

    if user_answer == num 
      puts "boom! you got the Right one!"
      break
    elsif user_answer > num
      puts "hmmm... try lower eh!?"
    elsif user_answer < num 
      puts "you should try to guess higher"
    end
  end
end

game