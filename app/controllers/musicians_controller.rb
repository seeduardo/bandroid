class MusiciansController < ApplicationController

  def index
    @musicians = Musician.all
  end

  def show
    @musician = Musician.find(params[:id])
  end

  def new
    # Add a way to check if a user is logged in before creating a new musician

    @musician = Musician.new
    @instruments = Instrument.all
  end

  def create

  end

  def edit
    # Add a way to only be able to edit a musician that belongs to a user

    @musician = Musician.find(params[:id])
    @instruments = Instrument.all
  end

  def update
    @musician = Musician.find(params[:id])
    @musician.update(musician_params)

    if @musician.valid?
      redirect_to musician_path(@musician)
    else
      render edit
    end

  end

  def destroy

  end

  private

  def musician_params
    params.require(:musician).permit(:stage_name, :location, :bio, instrument_ids: [])
  end

end
