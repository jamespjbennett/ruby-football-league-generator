class Player

  attr_accessor :name, :position, :attack, :defence

  def initialize (name, position, attack, defence)
    @name = name
    @position = position
    @attack = attack
    @defence = defence
  end

end


class Position

  attr_accessor :name
  
  def initialize (name)
    @name = name
  end

end
