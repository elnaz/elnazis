class Working < ActiveRecord::Base
  has_attached_file :image, 
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join('config/dropbox.yml'),
      :dropbox_options => {},
      :styles => { :detail => "400x400", :medium => "250x150>", :thumb => "100x100>" }, 
      :default_url => "http://dummyimage.com/200"

  validates_presence_of :title, :subtitle, :slug, :body
  validates :slug, uniqueness: { case_sensitive: false }, format: { with: Regexp.new('\A' + Elnazis::SLUG_FORMAT.source + '\z') }
  validates_attachment :image, :presence => true, :content_type => { :content_type => "image/jpeg" }
  
  def to_param
    slug
  end
end
