class Coder
  attr_reader :rating

  def initialize
    @rating = 0
  end

  def practice
    @rating += 1
  end

  def oh_one?
    @rating >= 1
  end

  def practice_until_oh_one
    practice until oh_one?
  end
end
