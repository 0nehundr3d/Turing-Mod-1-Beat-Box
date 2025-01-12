class BeatBox 
  attr_reader :list

  def initialize
    @list = LinkedList.new
    @inputs = ['tee', 'hee', 'deep', 'dop', 'doop', 'la', 'na']
  end

  def all
    @list.to_string
  end

  def append(string)
    str_array = string.split(" ")
    str_array.each { |string| @list.append(string) if @inputs.include?(string) }
  end

  def prepend(string)
    str_array = string.split(" ").reverse
    str_array.each { |string| @list.prepend(string) if @inputs.include?(string) }
  end

  def play
    `say -r 500 -v Boing #{@list.to_string}`
  end
end