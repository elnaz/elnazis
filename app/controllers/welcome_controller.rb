class WelcomeController < ApplicationController
  def index
    @writings = Writing.order(published_at: :desc).first(4)
    @workings = Working.order(:sort_order).first(6)
  end
end
