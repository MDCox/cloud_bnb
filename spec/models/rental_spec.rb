require 'spec_helper'

describe Rental do
  it { should belong_to :property }
  it { should belong_to :user }

  it 'has correct user' do
    test_user = FactoryGirl.create(:user)
    test_property = FactoryGirl.create(:property)
    test_rental = Rental.new(renter_id: test_user.id, property_id: test_property.id)

    test_rental.renter.should eq test_user
  end

  it 'has correct property' do
    test_user = FactoryGirl.create(:user)
    test_property = FactoryGirl.create(:property)
    test_rental = Rental.new(renter_id: test_user.id, property_id: test_property.id)

    test_rental.property.should eq test_property
  end
end
