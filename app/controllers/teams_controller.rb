class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all

    render json: TeamSerializer.new(@teams).serialized_json
  end

  # GET /teams/1
  def show
    render json: TeamSerializer.new(@team).serialized_json
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

    if @team.save
      render json: TeamSerializer.new(@team).serialized_json, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      render json:TeamSerializer.new(@team).serialized_json
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def team_params
      params.require(:data).require(:attributes).permit(:name, :primary, :secondary)
    end
end
