class MusiciansController < ApplicationController

  def index
    @musicians = Musician.all
  end

  def show
    # on the page, remind the user that you can only have one musician per user
    # or, if user has musician already, show error message

    @musician = Musician.find(params[:id])
    @user = @musician.user
  end

  def show_public
    @musician = Musician.find(params[:id])
    @user = @musician.user
  end

  def new
    # Add a way to check if a user is logged in before creating a new musician
    @musician = Musician.new
    @instruments = Instrument.all
  end

  def create
    @musician = Musician.new(musician_params)
    # @musician.user_id = session[:user_id]
    @musician.user_id = current_user.id
    if @musician.valid?
      @musician.save
      redirect_to musician_path(@musician)
    else
      flash[:errors] = @musician.errors
      # flash.now[:errors] = @musician.errors
      # render new_musician_path
      redirect_to new_musician_path
    end

  end

  def edit
    # Add a way to only be able to edit a musician that belongs to a user

    @musician = Musician.find(params[:id])
    authorized_for(@musician.user_id)
    @instruments = Instrument.all
  end

  def update
    @musician = Musician.find(params[:id])
    @musician.update(musician_params)

    if @musician.valid?
      redirect_to musician_path(@musician)
    else
      flash[:errors] = @musician.errors
      redirect_to edit_musician_path
    end

  end

  def destroy

  end

  private

  def musician_params
    params.require(:musician).permit(:stage_name, :location, :bio, instrument_ids: [])
  end

end
