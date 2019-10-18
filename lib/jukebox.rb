require 'pry'
# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  input = gets.strip

  songs.each_with_index{|song, index|
    if input.to_i == (index + 1)
      return puts "Playing #{song}"
    elsif input == song
      return puts "Playing #{song}"
    end
  }
  puts "Invalid input, please try again"
end

def list (songs)
  songs.each_with_index{|array, index|
    puts "#{index +1}. #{songs[index]} -"
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  puts "Please enter a command:"
  input = gets.strip
  until input == "exit" do
      if input == help
        help
      elsif input == list
        list(songs)
      end
  end
end
