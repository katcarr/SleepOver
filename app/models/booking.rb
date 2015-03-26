class Booking<ActiveRecord::Base
  belongs_to :user
  belongs_to :space
  validates :start_date, presence: true
  validates :end_date, presence: true

  def total_cost
    self.space.cost * (self.end_date - self.start_date)
  end
end
