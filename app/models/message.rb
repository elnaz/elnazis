class Message 
  include ActiveModel::Validations
  include ActiveModel::Conversion  
  extend ActiveModel::Naming  
  
  attr_accessor :name, :email, :body
  
  validates_presence_of :name, :email, :body
  validates_length_of :body, :maximum => 500
  validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end
end