class Photo<ActiveRecord::Base
  belongs_to :space

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  # validates_with AttachmentPresenceValidator, :attributes => :image
  # validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 1.megabytes
  # validates_attachment :image, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
end
