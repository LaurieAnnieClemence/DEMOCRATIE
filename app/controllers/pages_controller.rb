class PagesController < ApplicationController
  def cover
    @informations = Information.limit(1).order("RANDOM()")
    @gatherings = Gathering.limit(5).order("RANDOM()") #order(date: :desc)
  end
end
