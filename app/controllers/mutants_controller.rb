class MutantsController < ApplicationController

  before_action :load_mutant, only: [:edit, :update, :destroy]

  def index
    @mutants = Mutant.all
  end

  def new
    @mutant = Mutant.new
  end

  def create
    @mutant = Mutant.create(mutant_params)
    if @mutant.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @mutant.update(mutant_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @mutant.destroy
    redirect_to root_path
  end

  private

  def mutant_params
    params.require(:mutant).permit(:name, :race)
  end

  def load_mutant
    @mutant = Mutant.find(params[:id])
  end
end
