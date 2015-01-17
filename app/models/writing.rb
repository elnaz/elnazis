class Writing < ActiveRecord::Base
  has_attached_file :image, 
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join('config/dropbox.yml'),
    :dropbox_options => {},
    :styles => { :medium => "x150" }, 
    :default_url => "http://dummyimage.com/200"

  validates_presence_of :title, :slug, :body, :published_at
  validates :slug, uniqueness: { case_sensitive: false }, format: { with: Regexp.new('\A' + Elnazis::SLUG_FORMAT.source + '\z') }
  validates_attachment :image, :presence => true, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
  
  def to_param
    slug
  end  
end
