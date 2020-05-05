require "pry"

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |s, i| puts "#{i + 1}. " + s }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if songs.include?(user_input)
    puts "Playing " + user_input
    return nil
  end
  if user_input.length < 2 && user_input.to_i < 10
    puts "Playing " + songs[user_input.to_i - 1]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  puts help if user_input == "help"
  list(songs) if user_input == "list"
  play(songs) if user_input == "play"
  exit_jukebox if user_input == "exit"
end
