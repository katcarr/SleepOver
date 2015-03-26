class Space<ActiveRecord::Base
  belongs_to :user
  has_many :photos
  validates :address, presence: true
  validates :cost, presence: true
  validates :description, presence: true

  has_many :bookings
end
