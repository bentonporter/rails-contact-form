class ContactMessage
  attr_accessor :id, :email, :subject, :body
  
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
