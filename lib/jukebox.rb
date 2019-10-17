require 'pry'
# Add your code here



def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play
end

def list (songs)
  songs.each_with_index{|array, index|
    puts "#{idnex +1}. songs[0] -"
    binding.pry
  }
end

def exit_jukebox
end

def run (songs)
  puts songs
end
