class MainController < ApplicationController
  def index
    @properties = Property.order(:created_at).to_a
  end
end
