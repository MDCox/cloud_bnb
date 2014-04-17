class Property < ActiveRecord::Base
  belongs_to :user, :foreign_key => :owner_id
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x150>"}, :default_url => "/images/:style/missing.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def owner
    self.user
  end
end
