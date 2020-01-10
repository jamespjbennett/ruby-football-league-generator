class Player

  attr_reader :name, :position, :scoring, :creating, :defence
  attr_accessor :goals

  def initialize (name, position, scoring, creating, defence)
    @name = name
    @position = position
    @scoring = scoring
    @creating = creating
    @defence = defence
    @goals = 0
  end

  def increment_goals
    @goals += 1
  end
end


class Position

  attr_accessor :name

  def initialize (name)
    @name = name
  end

end
