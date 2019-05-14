class FilmsController < ApplicationController
  def index
    @all = Film.all
  end
end
