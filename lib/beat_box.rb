class BeatBox 
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(string)
    str_array = string.split(" ")
    str_array.each{|string| @list.append(string)}
  end

  def play
    `say -r 500 -v Boing #{@list.to_string}`
  end
end