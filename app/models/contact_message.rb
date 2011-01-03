class ContactMessage
  # TODO - Why is :id needed?
  attr_accessor :id, :email, :subject, :body
  
  # TODO - Why is this coded the way it is?  Is it necessary?
  def initialize(attributes = {})
    attributes.each do |key, value|
      send("#{key}=", value)
    end
    @attributes = attributes
  end
  
  def save
    Notifier.contact_me(self).deliver
  end
end
