class Property < ActiveRecord::Base
  belongs_to :user, :foreign_key => :owner_id
  has_attached_file :image, :styles => { :medium => "300>x300", :thumb => "150>x150"}, :default_url => ActionController::Base.helpers.asset_path("assets/missing_:style.jpg"), :whiny => true
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  def owner
    self.user
  end
end
