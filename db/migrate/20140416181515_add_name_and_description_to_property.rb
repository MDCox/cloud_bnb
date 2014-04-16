class AddNameAndDescriptionToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :name, :string
    add_column :properties, :description, :text
  end
end
