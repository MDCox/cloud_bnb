class Property < ActiveRecord::Base
  belongs_to :user, :foreign_key => :owner_id

  def owner
    self.user
  end
end
