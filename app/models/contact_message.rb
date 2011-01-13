class ContactMessage
  attr_accessor :email, :subject, :body
  
  def initialize(attributes = {})
    attributes.each do |key, value|
      send("#{key}=", value)
    end
  end
  
  def save
    Notifier.contact_me(self).deliver
  end
end
