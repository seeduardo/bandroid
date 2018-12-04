class MusiciansController < ApplicationController

  def index

  end

  def show

  end

  def new
    # Add a way to check if a user is logged in before creating a new musician

    @musician = Musician.new
    @instruments = Instrument.all
  end

  def create
    byebug
  end

  def edit
    @musician = Musician.find(params[:id])
    @instruments = Instrument.all
  end

  def update

  end

  def destroy

  end

  private

  def musician_params
    params.require(:musician).permit(:stage_name, :location, :bio, :instrument_ids)
  end

end
