class PagesController < ApplicationController
  def index
  end

  def about
  end

  def contact
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end
end
