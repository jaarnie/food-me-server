# frozen_string_literal: true

class Api::V1::FavoritesController < ApplicationController
  before_action :set_favorite, only: %i[show update destroy]

  def index
    @favorites = Favorite.all

    render json: @favorites
  end

  def show
    render json: @favorite
  end

  def create
    @favorite = Favorite.find_or_create_by(favorite_params)

    if @favorite.save
      render json: @favorite, status: :created
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  def update
    if @favorite.update(favorite_params)
      render json: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @favorite = Favorite.find(params[:res_id])
    @favorite.destroy
  end

  def remove
    @favorite = Favorite.find_by(user_id: params['user_id'], res_id: params['res_id'])
    @favorite.destroy
  end

  private

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:user_id, :res_id, :restaurant)
  end
end
