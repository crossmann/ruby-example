# if include a module into a class, methods of a module become methods of a class
module Debug
  def who_am_I?
    "My name is: #{self.class.name} and my ID is: #{self.object_id}: #{self.name}"
  end
end

class Phono
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Track
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

ph = Phono.new("Blues")
tr = Track.new("Track 8")

p ph.who_am_I?
p tr.who_am_I?
