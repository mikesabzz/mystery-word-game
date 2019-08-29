class Word
    # Stores the provided word in an instance variable and
    # setups up any other instance variables.
    attr_accessor :word
    def initialize(word)
      @word = word
      puts "guess the word?"
      name = gets.chomp
      puts "#{word} is the word."
      end
    
    # Guess a letter in the word.
    # Should return a boolean. true if the letter is in the word, false if not.
    def guess?(letter)
      word = @word.include?(letter) 
      puts "Guess a letter:"
      letter = gets.chomp
      if word == false
      puts "there is no #{letter} in #{@word}."
      return
      else 
        puts "the word has #{letter}."
      end
    end
  
    # Whether all letters in the word have been guessed correctly.

    def guessed_all_correct(letter)
      letter_arr = []
      letter_arr.push(letter)
      letter_arr.each { |lett| puts "guess wrong" if @word.include?(letter) == false}
      letter_arr.each { |lett| puts "guess right" if @word.include?(letter) == true}
    end
  
    # Display the current state of the guessed word for the player.

    def output_word(guess_word)
      if guess_word == @word
        puts "You are correct, #{guess_word}"
      else 
        puts "Wrong, it's not #{guess_word}"
    end
  end
  
    # Check whether a provided character is a letter

    def self.is_letter?(character)
        !("a".."z").include?(character)
      end
    end
  
  
  class MysteryWordGame
    # Initialize any state in the game, and start the game loop.
    def initialize
      @lives_left = 3
      ask_for_word
      game_loop
    end
  
    def ask_for_word
      puts "What is the word? Player 2 look away..."
      word = gets.chomp
      @word = Word.new(word)
    end
  
    # Run the game loop, which continues until the player wins or loses.
    def game_loop
      loop do
        puts "What's the word?"
        @word.output_word
        puts "You have #{@lives_left} lives left"
        puts "Guess a letter:"
        letter = gets.chomp

        if Word.is_letter?(letter)
          puts "Give me a letter!"
          next
        end

        if letter.length != 1
          puts "Please guess one letter at a time!"
        end

        correct_guess = @word.guess?(letter)
        if !correct_guess
          @lives_left -= 1
        end
        if @lives_left == 0
          puts "Loser!!!"
          break
        end
        if @word.guessed_all_correct?
          puts "Winner!!!!!"
          @word.output_word
          break
        end
      end
    end
  end
  
  MysteryWordGame.new