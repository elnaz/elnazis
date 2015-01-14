class Working < ActiveRecord::Base
  validates_presence_of :title, :subtitle, :slug, :body
  validates :slug, uniqueness: { case_sensitive: false }, format: { with: Regexp.new('\A' + Elnazis::SLUG_FORMAT.source + '\z') }
  
  def to_param
    slug
  end
end
