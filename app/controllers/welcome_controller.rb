class WelcomeController < ApplicationController
  def index
    @writings = Writing.order(published_at: :desc).first(4)
  end
end
