class HappyMemoriesController < ApplicationController
  def new
    @memory = HappyMemory.new
  end

  def create
    @memory = HappyMemory.new(memory_params)
    if @memory.save
      redirect_to root_path, notice: "ポジティブな思い出を記録しました。"
    else
      render :new
    end
  end

  private

  def memory_params
    params.require(:happy_memory).permit(:title, :content)
  end
end
