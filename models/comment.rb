class Comment
  include Trackable

  attr_accessor :created_at, :id, :text, :target_object, :user

  def initialize(_id, _commented_object, _text, _author)
    self.id = _id
    self.text = _text
    self.user = _author
    self.target_object = _commented_object

    self.created_at = Time.now

    self.save
  end

end