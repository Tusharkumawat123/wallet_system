class User
  attr_accessor :id, :name, :ac
  @@list = []

  def initialize (id: 0, name: '', ac: nil)
    @id = id
    @name = name
    @ac = ac
  end

  # class methods
  class << self
    def count
      @@list.count
    end

    def insert=(user)
      @@list << user
    end
  end


end
