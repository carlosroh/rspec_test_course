require 'spec_helper'

describe User do
  it "is valid with username" do
    user = FactoryGirl.build(:user)
    user.username = "chuck_rules"
    expect(user).to be_valid
  end

  it "is valid with first_name" do
    user = FactoryGirl.build(:user)
    user.first_name = "Chuck"
    user.should be_valid
  end

  it "is valid with last_name"
  it "is valid with email"

  it "is invalid without username" do
    user = User.new
    user.should be_invalid
  end

  it "is invalid without first_name" do
    user = FactoryGirl.build(:user, first_name: nil)
    user.should be_invalid
  end
end
