class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :properties, :foreign_key => :owner_id
  has_many :rentals, :foreign_key => :renter_id

  def rental_properties
    self.rentals.map { |r| r.property }.uniq
  end

  def admin?
    self.admin
  end

  def renter?
    self.renter
  end

  def owner?
    self.owner
  end
end
