class PointsController < ApplicationController
  before_action :set_point, only: [:show, :update, :destroy]

  # GET /points
  def index
    @points = Point.where(game_id: params['game_id'])

    render json: PointSerializer.new(@points).serialized_json
  end

  # GET /points/1
  def show
    render json: PointSerializer.new(@point).serialized_json
  end

  # POST /points
  def create
    @point = Point.new(point_params)

    if @point.save
      render json: PointSerializer.new(@point).serialized_json, status: :created, location: @point
    else
      render json: PointSerializer.new(@point.errors).serialized_json, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /points/1
  def update
    if @point.update(point_params)
      render json: PointSerializer.new(@point).serialized_json
    else
      render json: PointSerializer.new(@point.errors).serialized_json, status: :unprocessable_entity
    end
  end

  # DELETE /points/1
  def destroy
    @point.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point
      @point = Point.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def point_params
      params.require(:data).require(:attributes).permit(:our_score, :their_score, :we_pulled, :we_scored, :game_id, :player_ids)
    end
end
