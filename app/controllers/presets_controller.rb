class PresetsController < ApplicationController

  # landing page if user selected preset designs. Promts user to choose deisgn style and room type.
  # is a form in disquise
  def styles
  end

  # display presets matched from the #styles form
  def presets
    if params[:style].present? && params[:room].present?
      sql_query = "style ILIKE :style AND room ILIKE :room"
      @preset = Preset.where(sql_query, style: "%#{params[:style]}%", room: "%#{params[:room]}%")
    end
  end

end
