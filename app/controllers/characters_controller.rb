class CharactersController < ApplicationController
  before_action :find_character, only: [:show, :update, :destroy]

  def index
    @characters = Character.all

    render json: @characters
  end

  def show
    render json: @character
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, status: :created
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  def update
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @character.destroy
  end

  private
    def find_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:name, :image, :favorite_food, :affiliation)
    end
end
