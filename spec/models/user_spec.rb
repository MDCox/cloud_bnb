require 'spec_helper'

describe User do
  it { should have_many :properties }
  it { should have_many :rentals }

  it 'knows what properties it owns' do
    test_user = FactoryGirl.create(:user)
    test_property = FactoryGirl.create(:property, :owner_id => test_user.id)
    test_user.properties.should eq [test_property]
  end

  it 'knows which properties it has rented' do
    test_user = FactoryGirl.create(:user)
    test_property = FactoryGirl.create(:property, :owner_id => test_user.id)
    test_rental = Rental.create(:renter_id => test_user.id, :property_id => test_property.id)
    test_user.rental_properties.should eq [test_property]
  end

end
