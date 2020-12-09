class AquariaController < ApplicationController
  before_action :set_target_aquarium, only: %i[show edit update destroy]
  def index
    @aquaria = Aquarium.all
  end

  def new
    @aquarium = Aquarium.new(flash[:aquarium])
  end

  def create
    @aquarium = Aquarium.new(aquarium_params)
    if @aquarium.save
      flash[:notice] = "「#{aquarium.name}」の新規作成に成功"
      redirect_to aquarium
    else
      redirect_to new_aquaria_path, flash: {
        aquarium: aquarium,
        error_messages: aquarium.errors.full_messages
      }
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def aquarium_params
    params.require(:aquarium).permit(:name, :body, :address, :official, :image)
  end

  def set_target_aquarium
    @aquarium = Aquarium.find(params[:id])
  end
end
