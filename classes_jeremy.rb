# ### Challenges
# #### For the following Task challenge, use initialize and getter methods in your class
# - As a developer, I can create a class called Task.
# - As a developer, I can initialize each instance of class Task with a status that has a default value of 'incomplete'.
class Task
  def initialize(title)
    @title = title
    @status = 'incomplete'
  end

  def set_status(status)
    @status = status
  end

  def get_status
    @status
  end

  def get_title
    @title
  end
end

# - As a developer, I can initialize each instance of class Task with a title.
monday = Task.new('do laundry')
tuesday = Task.new('finish classwork')
wednesday = Task.new('study more programing')
thursday = Task.new('wash car')
friday = Task.new('sleep')

# - As a developer, I can see the title of each instance of class Task.
p monday.get_title
p tuesday.get_title
p wednesday.get_title
p thursday.get_title
p friday.get_title

# - As a developer, I can update the status of each instance of class Task when the task has been completed.
p friday.get_status
friday.set_status('Finished')
p friday.get_status

#========================================================================================
# #### For the following ColorPalette challenge use initialize and `attr_accessor` methods in your class
# - As a developer, I can create a class called ColorPalette.
class ColorPalette
  attr_accessor :color1, :color2, :color3

  def initialize(color1, color2, color3)
    @color1 = color1
    @color2 = color2
    @color3 = color3
  end

  def all_colors
    "The available colors in the Palette are #{@color1}, #{@color2}, and #{@color3}."
  end
end

# - As a developer, I can create three instances (objects) of class ColorPalette. (e.g green = ColorPalette.new)
# - As a developer, I can initialize each inistance of the class ColorPalette with three colors. (e.g. green = ColorPalette.new('Chartreuse', 'Kelly', 'Seafoam'))

green = ColorPalette.new('Dark Green', 'Teal', 'Grass Green')
red = ColorPalette.new('Blood Red', 'Fire Red', 'Light Red')
yellow = ColorPalette.new('Sunshine Yellow', 'Orange Yellow', 'light Yellow')

# - As a developer, I can print the value of each individual color.
p yellow.color1
p green.color2
p red.color3

# - As a developer, I can create a method called `all_colors` that when called will print a sentence telling me the three colors of a given palette.
p green.all_colors

# - As a developer, I can change one or more colors of a given palette.
green.color1 = 'Light Green'
p green.color1

# #### Animal Kingdom ============================================
# - As a developer, I can make an Animal (generic Animal class).
# - As a developer, upon initialization, I can give my Animal a status of `alive`, which will be set to true.
# - As a developer, I can give my Animal an `age` of 0 upon creation.
# - As a developer, I can age my Animal up one year at a time.
class Animal
  attr_accessor :age, :alive

  def initialize
    @alive = true
    @age = 0
  end

  def grow_older
    @age += 1
  end
end

cat = Animal.new

# - As a developer, I can return my Animal's `age`, as well as if they're `alive`.
#   - **Hint**: Use `attr_accessor` as well as an `initialize` method.
cat.grow_older
cat.grow_older
p cat.age

# - As a developer, I can create a Fish that inherits from Animal.
# - As a developer, I can initialize all of my fish to be `cold_blooded`. (Yes, there is _one_ fish who is technically fully warm-blooded but we aren't going to talk about that.)
class Fish < Animal
  attr_accessor :cold_blooded

  def initialize
    super()
    @cold_blooded = true
  end
end

# - As a developer, I can create a Salmon that inherits from Fish.
# - As a developer, I can initialize my Salmon to be a specific species (Atlantic, Sockeye, etc).
# - As a developer, if my Salmon reaches the ripe old age of 4, I can make it die peacefully after a full and happy life.
#   - **Hint**: You will need a method that changes the status of `alive` in the initialize method of Animal.
class Salmon < Fish
  attr_accessor :species

  def initialize
    super()
    @species = 'Sockeye'
  end

  def get_info
    "Species: #{@species} \nAge: #{@age} \nAlive: #{@alive} \nCold-Blooded: #{@cold_blooded}"
  end

  def grow_older
    @age += 1
    @alive = false if @age > 3
  end
end

# - As a developer, I can see that my Salmon is cold-blooded.
bob = Salmon.new
p bob.cold_blooded

# - As a developer, I can age my Salmon up.
bob.grow_older
bob.grow_older
bob.grow_older
bob.grow_older

p bob.age

# - As a developer, I can see a message that tells me all of my Salmon's information.
puts bob.get_info

# - As a developer, I can create a Mammal that inherits from Animal.
# - As a developer, I can initialize all of my Mammals to be `warm_blooded`.
class Mammal < Animal
  attr_accessor :cold_blooded, :name

  def initialize(name = 'creature')
    super()
    @name = name
    @cold_blooded = false
    @sleeping = false
    @hungry = false
    @calories = 0
  end

  def give_name(name)
    @name = name
    p "You named your pet #{@name}."
  end

  def sleep
    @sleeping = true
    p "#{@name} is sleeping"
    @calories = 0
  end

  def wake_up
    p "#{@name} is awake"
    @sleeping = false
    p "#{@name} is hungry, maybe he should eat."
  end

  def eat
    @calories += 100
    if @calories < 500
      @hungry = true
      p "#{@name} is hungry."
    else
      @hungry = false
      p "#{@name} is full."
    end
  end

  def get_info
    "Name: #{@name}
    Age: #{@age}
    Alive: #{@alive}
    Cold-Blooded: #{@cold_blooded}
    Hungry: #{@hungry}
    Sleeping: #{@sleeping}
    Calories Consumed: #{@calories}"
  end

  def grow_older
    @age += 1
    if age > 35
      @alive = false
      p ' @name Unfortunatly succombed to old age'
    end
  end
end

# - As a developer, I can create a Bear that inherits from Mammal.
# - As a developer, if my Bear turns 20 years old, I can make it die peacefully after a full and happy life.
#   - **Hint**: You will need a method that changes the status of `alive` in the initialize method of Animal.
class Bear < Mammal
  attr_accessor

  def initialize
    super()
  end

  def grow_older
    @age += 5
    if age > 19
      @alive = false
      p 'Died peacfully after a long happy life'
    end
  end
end

yogi = Bear.new

# - As a developer, I can age my Bear up.
yogi.grow_older
yogi.grow_older
yogi.grow_older
yogi.grow_older

# - As a developer, I can see a message that tells me all of my Bear's information.
p yogi.give_name('Yogi Bear')

# - As a developer, I can create a Mammal of my choice.
# - As a developer, I can interact with the new Mammal via various methods.
# - As a developer, I can see a message that tells me all of my new Mammal's information.
bobcat = Mammal.new
bobcat.give_name('Fred')
bobcat.grow_older
bobcat.grow_older
bobcat.grow_older

panda = Mammal.new
puts panda.name
panda.give_name('Alanso')
panda.grow_older
p panda.name
panda.sleep
panda.wake_up
panda.eat
panda.eat
puts panda.get_info

# - **STRETCH:** As a developer, I can keep a collection of two of each Animal.
#   - **Hint**:	You'll want to add your Animals into an array.
zoo = []
puts yogi.get_info
puts panda.get_info
zoo << yogi
zoo << panda
zoo << bobcat

p 'UNORGANIZED'
p zoo

# p zoo
# - **STRETCH:** As a developer, I can sort my collection of Animals based on age.
organized_zoo = zoo.sort_by { |obj| obj.age }
p 'ORGANIZED ZOO'
p organized_zoo

#   - **Hint**: Find out how the spaceship operator can help you with an array.
# - **SUPER STRETCH:** As a developer, I can utilize a Ruby `module` to help DRY up my code. I can create a `swim` method inside of my `module` that will apply to Animals who can _swim_. This method should return "I can swim!"
#   - **Hint**: Look into module `mix ins`. Since not all animals can swim, only certain Animals will have access to this module.
