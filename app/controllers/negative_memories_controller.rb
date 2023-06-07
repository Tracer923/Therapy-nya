class NegativeMemoriesController < ApplicationController
  def new
    @memory = NegativeMemory.new
  end

  def create
    @memory = NegativeMemory.new(memory_params)
    if @memory.save
      redirect_to root_path, notice: "ネガティブな思い出を記録しました。"
    else
      render :new
    end
  end

  private

  def memory_params
    params.require(:negative_memory).permit(:title, :content)
  end
end
