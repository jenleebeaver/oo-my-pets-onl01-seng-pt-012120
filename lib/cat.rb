class Cat

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
    @owner << self
    @@all << self
  end

  def self.all
    @@all
  end

end
