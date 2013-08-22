# Hangman Game (Requires 'random-word' gem)
class Hangman

	require 'random-word'

	def play_game
		@lives = 5
		get_a_word
		puts "Welcome to Hangman! Your word is #{@word_length} letters long."
		hide_the_word
		while @word != @user_word && @lives > 0
				guess_the_word
				match_the_letter
				drawing
		end
		puts @lives > 0 ? "Congratulations!" : "The correct word was #{@word}.\nGame Over!"
	end

	def get_a_word
		@word = RandomWord.adjs.next
		@word_length = @word.length
	end

	def hide_the_word
		@user_word = @word.gsub(/\w/, "_")
		puts @user_word
	end

	def guess_the_word
		puts "Please guess a (single) letter. You have #{@lives} lives left!"
		@input = gets.chomp
	end

	def match_the_letter
		index = 0
		if @word.each_char.include?(@input)
			puts "You got the right letter!"
			@word.each_char do |l|
				if l == @input
					@user_word[index] = @input
				end
				index += 1
			end
		else
			puts "You got the wrong letter!"
			@lives -= 1
		end
		puts @user_word
	end

	def drawing
		puts "_______"
		puts "|     |"
		puts "|     O"		if @lives < 5
		puts "|    /|" 		if @lives == 3
		puts "|    /|\\"	if @lives < 3
		puts "|    /"		if @lives == 1
		puts "|    / \\"	if @lives < 1
		puts "|"			if @lives == 5
		puts "|" 			if @lives >= 4
		puts "|" 			if @lives >= 2
		puts "|______"
	end

end

game = Hangman.new
game.play_game