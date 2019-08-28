class Word
    # Stores the provided word in an instance variable and
    # setups up any other instance variables.
    attr_accessor :word
    def initialize(word)
      @word = word
      puts "what is the word?"
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
      puts character
      end
    end
  
  
  class MysteryWordGame
    # Initialize any state in the game, and start the game loop.
    def initialize
    end
  
    def ask_for_word
    end
  
    # Run the game loop, which continues until the player wins or loses.
    def game_loop
    end
  end
  
  MysteryWordGame.new
  
  bird = Word.new('bird')
  bird.guess?('i')
  bird.guessed_all_correct('b')
  bird.output_word('bird')
  Word.is_letter?('bird')
  