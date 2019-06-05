class Team
  @@all = []
  attr_accessor :name, :motto

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @@all << self
  end

  def self.all
    @@all
  end
end
