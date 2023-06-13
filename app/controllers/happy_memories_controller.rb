class HappyMemoriesController < ApplicationController
  def new
    @memory = HappyMemory.new
  end

  def create
    @memory = HappyMemory.new(memory_params)
    if @memory.save
      redirect_to happy_memory_path(@memory), notice: "ポジティブな思い出を記録しました。"
    else
      render :new
    end
  end
  
  def show
    @happy_memory = HappyMemory.find(params[:id])
  end
  
  def index
    @happy_memories = HappyMemory.all
  end

  private

  def memory_params
    params.require(:happy_memory).permit(:title, :content)
  end
end
