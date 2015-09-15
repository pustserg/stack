class TeamsController < ApplicationController
  before_action :load_team, only: [:edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    if @team.save
      redirect_to teams_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @team.update(team_params)
      redirect_to teams_path
    else
      render 'edit'
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end

  def load_team
    @team = Team.find(params[:id])
  end
end
