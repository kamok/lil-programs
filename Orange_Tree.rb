class OrangeTree 
  def initialize 
    @age=0
    @height=0
    puts "You sow a mysterious seed from your grandfather."
  end

  NARRATIVE = {
    3  => "Your tree starts growing oranges!",
    6  => "You make enough money from your orange tree to start a family!",
    7  => "You propose to your wife under the orange tree.",
    8  => "Your wife is prengant!",
    9  => "Your wife sits with your son under the orange tree.",
    10 => "Your wife gave birth to a daughter.",
    11 => "The tree sits tall behind your house.",
    12 => "Lighting strikes your tree.",
    13 => "Your tree is dying.",
    15 => "Beauty fades, that is why it's beautiful. You go to the market for another seedling.",
  }

  ORANGES_PER_YEAR ={
    3  => 5,
    4  => 6,
    5  => 8,
    6  => 12,
    7  => 15,
    8  => 26,
    9  => 39,
    10 => 50,
    12 => 26,
    13 => 13,
    14 => 1,
  }

  def care
    if @age < 3
      puts "You care for the seedling."
    else 
      puts "You care for the orange tree."
    end
    one_year_passes
  end

  def one_year_passes
    @age += 1
    puts "It is now year #{@age}. Height: #{@height}"
    # puts NARRATIVE[@age] if NARRATIVE[@age]
      #starts orange count
      if @age >= 3
        puts "Orange Count: #{oranges_on_tree}"
      end
      #manages height
      if @age < 5
        @height = @age
      elsif @age >= 5
        @height = 5
      else @age == 15
        @height = 0
      end
  end 

  def count_the_oranges
    puts @oranges_on_tree
  end

  def oranges_on_tree
    @oranges_on_tree = ORANGES_PER_YEAR[@age] if ORANGES_PER_YEAR[@age]
  end

  def pick_an_orange
    if @oranges_on_tree == 0 
      puts "There aren't anymore oranges left!"
    else 
      @oranges_on_tree -= 1
      puts "You pick an orange."
    end
  end
end

seed = OrangeTree.new


  #height method, returns height and one_year_passes method
  #one_year_passes method returns age when called
  #tree grows X inches per year, dies after a Y years.
  #doesn't bear fruit in first few years. Does after.
  #there's a limit on amount of fruit grow, slowly approaches
  #count_the_oranges method returns number of oranges on tree
  #pick_an_orange reduces @orangeCount by one -- delicious! or no more oranges!!!
  #oranges all fall off every year

