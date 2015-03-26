class Space<ActiveRecord::Base
  belongs_to :user
  validates :address, presence: true
  validates :cost, presence: true
  validates :description, presence: true
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
