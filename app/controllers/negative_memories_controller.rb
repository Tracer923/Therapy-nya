class NegativeMemoriesController < ApplicationController
  def new
    @memory = NegativeMemory.new
  end

  def create
    @memory = NegativeMemory.new(memory_params)
    if @memory.save
      redirect_to negative_memory_path(@memory), notice: "ネガティブな思い出を記録しました。"
    else
      render :new
    end
  end
    
  def show
    @negative_memory = NegativeMemory.find(params[:id])
  end
  
  def index
    @negative_memories = NegativeMemory.all
  end

  private

  def memory_params
    params.require(:negative_memory).permit(:title, :content)
  end
end
