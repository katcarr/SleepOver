class Space<ActiveRecord::Base
  belongs_to :user
  validates :address, presence: true
  validates :cost, presence: true
  validates :description, presence: true

end
