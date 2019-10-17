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
  until input == "exit" do
  puts "Please enter a song name or number:"
  input = gets.strip

  songs.each_with_index{|song, index|
    if input.to_i == (index + 1)
      puts "Playing #{song}"
    elsif input == "exit"
      return goodbye!
    end
  }
end
end

def list (songs)
  songs.each_with_index{|array, index|
    puts "#{index +1}. #{songs[index]} -"
  }
end

def exit_jukebox
end

def run (songs)

end

play(songs)
