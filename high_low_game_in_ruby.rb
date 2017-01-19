def game
  num = rand 24
  puts "Please guess a number between 0 and 23"

  loop do 
    user_answer = gets.chomp.to_i

    if user_answer == num 
      puts "Awesome!! you Got It right!!"
      break
    elsif user_answer > num
      puts "hmmm I think you should guess lower!"
    elsif user_answer < num 
      puts "ops! now I think you shoul try to guess a higher number"
    end
  end
end

game