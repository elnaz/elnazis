class Writing < ActiveRecord::Base
  has_attached_file :image, 
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join('config/dropbox.yml'),
    :dropbox_options => {},
    :styles => { :detail => "400x400", :medium => "200x200>", :thumb => "100x100>" }, 
    :default_url => "http://dummyimage.com/200"

  validates_presence_of :title, :body, :published_at
  validates_attachment :image, :presence => true, :content_type => { :content_type => "image/jpeg" }
end
