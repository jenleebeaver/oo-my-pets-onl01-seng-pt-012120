class Owner

  @@all = []

 attr_accessor :name, :pets, :dog, :cat
 attr_reader :species

# def name
   #@name = name
 #end

 def initialize(species)
   @species = species
   @@all << self
   @pets = {:dogs => [], :cats => []}
 end

def say_species
  puts "I am a #{@species}."
end

def self.all
  @@all
end

def self.count
 @@all.size
end

def self.reset_all
  @@all.clear
end

def buy_cat(name_of_cat)
  @pets[:cats] << Cat.new(name_of_cat)
end

def buy_dog(name_of_dog)
  @pets[:dogs] << Dog.new(name_of_dog)
end

def walk_dogs
  @pets.collect do |species, instances| #iterate through collection of pets: species and instances
    if species == :dogs
        instances.each do |dog|
          dog.mood = "Happy"
      end
    end
  end
end

def feed_cats
  @pets.collect do |species, instances|
  if species == :cats
    instances.each do |cat|
        cat.mood = "Happy"
      end
    end
  end
end

def sell_pets
  @pets.collect do |species, instances|
    instances.each do |pet|
      pet.mood = "nervous"
    end
    instances.clear
  end
end

def list_pets
  num_dogs = @pets[:dogs].size
  num_cats = @pets[:cats].size
  return "I have #{num_dogs} dog(s) and #{num_cats} cat(s)."
end

end
