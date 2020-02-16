class Cat

  attr_accessor :mood, :owner
  attr_reader :name

@@all = []

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
