class Api::V1::UserFavouritesController < ApplicationController
  before_action :set_user_favourite, only: [:show, :update, :destroy]

  # GET /user_favourites
  def index
    @user_favourites = UserFavourite.all

    render json: @user_favourites
  end

  # GET /user_favourites/1
  def show
    render json: @user_favourite
  end

  # POST /user_favourites
  def create
    @user_favourite = UserFavourite.new(user_favourite_params)

    if @user_favourite.save
      render json: @user_favourite, status: :created
    else
      render json: @user_favourite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_favourites/1
  def update
    if @user_favourite.update(user_favourite_params)
      render json: @user_favourite
    else
      render json: @user_favourite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_favourites/1
  def destroy
    @user_favourite.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_favourite
      @user_favourite = UserFavourite.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_favourite_params
      params.fetch(:user_favourite, {})
    end
end
