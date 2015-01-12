class Working < ActiveRecord::Base
  validates_presence_of :title, :subtitle, :body
end
