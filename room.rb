class Room
  attr_reader :genre, :capacity, :guest_count
  attr_accessor :playlist


  def initialize(genre, capacity, playlist, guest_count)
    @genre = genre
    @capacity = capacity
    @playlist = []
    @guest_count = guest_count
  end

  def calculate_available_space
    available_space = @capacity -= @guest_count
  end

  def add_new_song
    @playlist.push('song 4')
  end






end
