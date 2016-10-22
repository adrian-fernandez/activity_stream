module Trackable
  attr_reader :observers

  def save
    if self.respond_to?(:target_object)
      ActivityStream.new(self.target_object.class, self.user.full_name, self.class.to_s.downcase)
    else
      ActivityStream.new(self.class, self.user.full_name, 'create')    
    end
  end

  def update(field, value, user)
    self.send("#{field}=", value)

    ActivityStream.new(self.class, user.full_name, 'update')
  end

  def destroy(user)
    ActivityStream.new(self.class, user.full_name, 'destroy')   
  end

end