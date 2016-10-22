class User

  attr_accessor :id, :full_name

  def initialize(_id, _name)
    self.id = _id
    self.full_name = _name
  end

end