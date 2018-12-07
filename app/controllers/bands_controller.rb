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

  end


  def create
    @band = Band.new(band_params)
    # # @band.user_id = session[:user_id]
    # @band.musicians.first.user_id = current_user.id
    if @band.valid?
      @band.save
      session[:num_of_musicians] = params[:num_of_musicians]
      num_of_musicians = session[:num_of_musicians].to_i
      num_of_musicians.times {@band.band_musicians << BandMusician.create(musician_id: "1", band_id: @band.id)}
    
      redirect_to edit_band_path(@band)
    else
      flash[:errors] = @band.errors
      redirect_to new_band_path
    end

  end

  def edit

    @band = Band.find(params[:id])

    @musicians = Musician.all
    if @band.band_musicians.empty?
  
      num_of_musicians = session[:num_of_musicians].to_i
      num_of_musicians.times {@band.band_musicians.create(musician_id: "1")}
    end

  end

  def update
    @band = Band.find(params[:id])
    @band.update(band_params)

    if @band.valid?
      @band.assign_as_filled
      byebug
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
    params.require(:band).permit(:name, :location, :bio, :user_id, instrument_ids: [], musician_ids: [], band_musicians_attributes: [:role, :filled, :musician_id, :id])
  end


end
