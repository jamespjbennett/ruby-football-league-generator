class Player

  attr_accessor :name, :position, :scoring, :creating, :defence

  def initialize (name, position, scoring, creating, defence)
    @name = name
    @position = position
    @scoring = scoring
    @creating = creating
    @defence = defence
  end

end


class Position

  attr_accessor :name

  def initialize (name)
    @name = name
  end

end
