class ActivityStream
  attr_accessor :timestamp, :user, :key, :target_item_type

  ACTION_KEYS = {
    'create' => 'created',
    'update' => 'updated',
    'comment' => 'commented on',
    'destroy' => 'destroyed'
  }

  def initialize(_class, _user, _key)
    self.target_item_type = _class.to_s.downcase
    self.user = _user
    self.key = _key
    self.timestamp = Time.now

    render_activity()
  end

  def render_activity
    puts "[#{self.timestamp}] #{user} #{ACTION_KEYS[key]} a #{self.target_item_type}"
  end
end