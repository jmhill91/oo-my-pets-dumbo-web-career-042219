class Owner
  attr_reader :species
  attr_accessor :name, :pets
    @@all =[]

    def initialize(species)
      @species = species
      @@all << self
      @pets ={:cats => [], :dogs => [], :fishes => []}
    end

    def self.all
      @@all
    end

    def self.count
      Owner.all.count
    end

    def self.reset_all
      Owner.all.clear
    end

    def say_species
       "I am a #{self.species}."
    end


    def buy_fish(name)
      pets[:fishes] << Fish.new(name)
    end

    def buy_cat(name)
      pets[:cats] << Cat.new(name)
    end

    def buy_dog(name)
      pets[:dogs] << Dog.new(name)
    end

    def walk_dogs
      pets[:dogs].each do |dog|
      dog.mood = "happy"
      end
    end

    def play_with_cats
      pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      pets.each do |species, animals|
          animals.each do |pet|
            pet.mood = "nervous"
          end
          animals.clear
        end
    end

    def list_pets
  #     can list off its pets (FAILED - 34)
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end

end
