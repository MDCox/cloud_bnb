require 'spec_helper'

describe Property do
  it { should belong_to :user }

  it "knows who owns it" do
    test_user = FactoryGirl.create(:user)
    test_property = FactoryGirl.create(:property, :owner_id => test_user.id)
    test_property.owner.should eq test_user
  end

end
