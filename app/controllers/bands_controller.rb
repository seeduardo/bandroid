class BandsController < ApplicationController

  def index

  end

  def show

  end

  def new
    # Add a way to check if a user is logged in before creating a new musician

    @band = Band.new
    @instruments = Instrument.all
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
