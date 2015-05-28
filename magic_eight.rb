# Magic Eight Ball
# Basic Objectives:
# User inputs question – (push & switch drivers)
# Computer outputs random answer – (push & switch drivers)
# User inputs "QUIT” – (push & switch drivers)
# Computer outputs a goodbye message and exits – (push & switch drivers)
class MagicEight

  def welcome
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Welcome to the Magic Eightball"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "
          _......._
       .-:::::::::::-.
     .:::::::::::::::::.
    :::::::' .-. `:::::::
   :::::::  :   :  :::::::
  ::::::::  :   :  ::::::::
  :::::::::._`-'_.:::::::::
  :::::::::' .-. `:::::::::
  ::::::::  :   :  ::::::::
   :::::::  :   :  :::::::
    :::::::._`-'_.:::::::
     `:::::::::::::::::'
       `-:::::::::::-'
          `'''''''`"
    get_input
  end 

  def get_input
    puts "Enter QUIT to leave."
    sleep 1
    puts "What is you question?"
    choice = gets.chomp
      if choice == "QUIT"
        puts "Thanks for playing."
      else
        output_random
        get_input
      end

  end

  def output_random
    answers = ["It is certain", 
    "It is decidedly so", 
    "Without a doubt", 
    "Yes definitely", 
    "You may realy on it", 
    "As I see it, yes", 
    " Most likely", 
    "Outlook good", 
    "Yes", 
    "Signs point to yes", 
    "Reply hazy, try again", 
    "Ask again later", 
    "Better not tell you now...", 
    "Cannot predict now", 
    "Concentrate and ask again", 
    "Don't count on it", 
    "My reply is no", 
    "My sources say no", 
    "Outlook not so good", 
    "Very doubtful"]
    output = answers.sample
    puts "#{output}"
  end
end

MagicEight.new.welcome
