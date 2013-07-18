class Tree
  def initialize
    @hight = 0
    @fruit = 0
    @year = 1.0
    @age = 0.0
    @life = 10
    @piced_froot = 0
    @died_froot = 0
  end

  def time_pases
    @age = @age + (@year/4)
    dead?
  end

  def dead?
    if @age == @life
      puts "the tree has died"
      puts "you have saved #{@piced_froot} fruit and let #{@died_froot} rott"
    else
      growing
    end
  end

  def pic_fruit(count)
    @piced_froot += count
    @died_froot += (@fruit - count)
    puts "to date you have colected #{@piced_froot} fruit and let #{@died_froot} rott"
  end

  def let_fruit_die
    @died_froot += @fruit
    puts "to date you have colected #{@piced_froot} fruit and let #{@died_froot} rott"
  end

  def haw_many_can_be_picked(count)
    if count <= @fruit
      pic_fruit count
    else
      puts "you can only pick #{@fruit} fruits you have picked all the froot from the tree"
      pic_fruit @fruit
    end
  end

  def do_what
    puts "there is #{@fruit} fruit"
    puts "would you like to pick them?"
    pick = gets.chop

    if pick == "yes"

      puts "hawmany would you like to pick?"
      count = gets.chop.to_i

      haw_many_can_be_picked(count)
    else
      let_fruit_die
    end
  end

  def bare_fruit
    if @age >= @year && @age == @age.to_i
      @fruit = 4 * @age.to_i

      do_what
      time_pases
    else
      time_pases
    end
  end

  def grow_your_tree
    bare_fruit
  end

  def growing
    @hight = @age * 10

    puts "the tree has grone #{@hight} feet and is #{@age} years old"

    bare_fruit
  end

end

ornge = Tree.new
ornge.grow_your_tree
