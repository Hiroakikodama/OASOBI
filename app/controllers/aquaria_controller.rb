class AquariaController < ApplicationController
  before_action :set_target_aquarium, only: %i[show edit update destroy]

  def index
    @aquaria = params[:tag_id].present? ? Tag.find(params[:tag_id]).aquaria : Aquarium.all
    @aquaria = @aquaria.page(params[:page])
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
    @comment = Comment.new(aquarium_id: @aquarium.id)
  end

  def edit
    @aquarium.attributes = flash[:aquarium] if flash[:aquarium]
  end

  def update
    if @aquarium.update(aquarium_params)
      redirect_to @aquarium
    else
      redirect_to :back, flash: {
        aquarium: @aquarium,
        error_messages: @aquarium.errors.full_messages
      }
    end
  end

  def destroy
    @aquarium.destroy
    redirect_to aquaria_path, flash: { notice: "「#{@aquarium.name}」を削除しました。" }
  end

  private
  def aquarium_params
    params.require(:aquarium).permit(:name, :body, :address, :official, :image, tag_ids: [])
  end

  def set_target_aquarium
    @aquarium = Aquarium.find(params[:id])
  end
end
