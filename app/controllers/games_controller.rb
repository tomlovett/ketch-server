class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @games = Game.all

    render json: GameSerializer.new(@games).serialized_json
  end

  # GET /games/1
  def show
    render json: GameSerializer.new(@game).serialized_json
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: GameSerializer.new(@game).serialized_json, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: GameSerializer.new(@game).serialized_json
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:data).require(:attributes).permit(:closed, :opponent_name, :opponent_color, :our_score, :their_score, :team_id)
    end
end
