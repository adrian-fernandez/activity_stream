class Quote
  include Trackable

  attr_accessor :id, :title, :content, :created_at, :user

  def initialize(_id, _title, _author)
    self.id = _id
    self.title = _title
    self.user = _author

    self.created_at = Time.now

    self.save
  end

end