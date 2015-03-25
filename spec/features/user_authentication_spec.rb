require 'rails_helper'

describe "Use authentication process" do
  it "will create a new user when user sign up filled in" do
    visit '/'
    click_on "Sign Up"
    fill_in "email", with: "k@k.com"
    fill_in "password", with: "123"
    fill_in "password_confirmation", with: "123"
    click_on "Submit"
    expect(current_path).to eql(spaces_path)
  end

  it "will create a new user when user sign up filled in" do
    User.create({email: "k@k.com", password: "123"})
    visit '/'
    fill_in "email", with: "k@k.com"
    fill_in "password", with: "123"
    click_on "Login"
    expect(current_path).to eql(spaces_path)
  end
end
