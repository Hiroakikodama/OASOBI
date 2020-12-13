class AquariaController < ApplicationController
  before_action :set_target_aquarium, only: %i[show edit update destroy]

  def index
    @aquaria = Aquarium.page(params[:page])
  end

  def new
    @aquarium = Aquarium.new
  end

  def create
    aquarium = Aquarium.new(aquarium_params)
    if aquarium.save
      flash[:notice] = "「#{aquarium.name}」を作成しました。"
      redirect_to aquarium
    else
      redirect_to new_aquarium_path, flash: {
        error_messages: aquarium.errors.full_messages
      }
    end
  end

  def show
  end

  def edit
  end

  def update
    @aquarium.update(aquarium_params)
    redirect_to @aquarium
  end

  def destroy
    @aquarium.delete
    redirect_to aquaria_path, flash: { notice: "「#{@aquarium.name}」を削除しました。" }
  end

  private
  def aquarium_params
    params.require(:aquarium).permit(:name, :body, :address, :official, :image)
  end

  def set_target_aquarium
    @aquarium = Aquarium.find(params[:id])
  end
end
