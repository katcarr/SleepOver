require 'rails_helper'


describe Space do
  it {should belong_to :user}
  it {should have_many :photos}
  it {should have_many :bookings}

  it {should validate_presence_of :address}
  it {should validate_presence_of :description}
  it {should validate_presence_of :cost}
end
