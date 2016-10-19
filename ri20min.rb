class MegaGreeter
  attr_accessor :names

  # Create the object
  def initialize(names = "World")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # If @names is a list, iterate.
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye 
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      #join the list elements with commas
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else 
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  #Change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  mg.names = ["Albert", "Charles", "Brenda", "Steve", "Englebert"]
  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye
end
