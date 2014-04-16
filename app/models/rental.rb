class Rental < ActiveRecord::Base
  belongs_to :user, foreign_key: :renter_id
  belongs_to :property

  def renter
    self.user
  end
end
