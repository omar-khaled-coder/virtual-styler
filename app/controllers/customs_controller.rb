class CustomsController < ApplicationController

  def designers
    @designers = Designer.all
  end
end
