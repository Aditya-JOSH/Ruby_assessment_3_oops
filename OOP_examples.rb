class Animals
    @@types_of_animals = 4
    @@no_of_animals = 2
  
    attr_accessor :speed, :weight, :name
  
    def initialize(name)
      @name = name
    end
  
    def self.no_of_animals
      @@no_of_animals
    end
  
    def self.types_of_animals
      @@types_of_animals
    end

    # Abstract method
    def sound
      raise NotImplementedError, "Subclasses must implement the 'sound' method"
    end
  
    def animal_info
      "Name: #{@name}, Speed: #{speed}, Weight: #{weight}"
    end
  end
  
  class Cheetah < Animals
    def sound
      "Cheetah roars!"
    end
  end
  
  class Lion < Animals
    def sound
      "Lion roars!"
    end
  end
  
  c1 = Cheetah.new("Cheetah")
  c2 = Lion.new("Lion")
  
  c1.speed = 100
  c2.weight = 100
  
  puts "#{c1.name} has a speed of #{c1.speed}"
  puts "#{c2.name} has a weight of #{c2.weight}"
  
  puts "Number of animals: #{Animals.no_of_animals}"
  puts "Types of animals: #{Animals.types_of_animals}"
  
  def animal_says(animal)
    puts "#{animal.name} says: #{animal.sound}"
  end
  
  animal_says(c1)
  animal_says(c2)
  
  class Bird < Animals
    attr_accessor :wingspan
  
    def initialize(name, wingspan)
      super(name)
      @wingspan = wingspan
    end
  
    def sound
      "Bird chirps!"
    end
  
    def animal_info
      super + ", Wingspan: #{@wingspan}"
    end
  end
  
  b1 = Bird.new("Eagle", 2.0)
  
  b1.wingspan = 2.5
  
  puts b1.animal_info
  animal_says(b1)
  