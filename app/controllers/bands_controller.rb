class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find(params[:id])
    @user = current_user

    @filled_roles = @band.filled_roles
    @open_roles = @band.open_roles

  end

  def new
    # Add a way to check if a user is logged in before creating a new musician

    @band = Band.new
    @instruments = Instrument.all
    @musicians = Musician.all
    
    num_of_musicians = 3
    num_of_musicians.times {@band.band_musicians.build}

  end


  def create
    byebug
    @band = Band.new(band_params)
    # # @band.user_id = session[:user_id]
    # @band.musicians.first.user_id = current_user.id
    if @band.valid?
      @band.save
      byebug
      redirect_to band_path(@band)
    else
      flash[:errors] = @band.errors
      byebug
      redirect_to new_band_path
    end

  end

  def edit
    # Add a way to only be able to edit a band that belongs to a user

    @band = Band.find(params[:id])
    authorized_for(@band.user_id)
    # @instruments = Instrument.all
  end

  def update
    @band = Band.find(params[:id])
    @band.update(band_params)

    if @band.valid?
      redirect_to band_path(@band)
    else
      flash[:errors] = @band.errors
      redirect_to edit_band_path
    end

  end

  def destroy

  end

  private

  def band_params
    params.require(:band).permit(:name, :location, :bio, :user_id, instrument_ids: [], musician_ids: [], band_musicians_attributes: [:role, :filled])
  end


end
