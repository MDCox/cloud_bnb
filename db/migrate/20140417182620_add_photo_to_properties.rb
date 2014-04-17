class AddPhotoToProperties < ActiveRecord::Migration
  def change
    add_attachment :properties, :image
  end
end
