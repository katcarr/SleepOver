require 'rails_helper'


describe User do
  it {should have_many :spaces}
  it {should have_many :bookings}

end
