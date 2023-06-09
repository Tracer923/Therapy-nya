class HappyMemoriesController < ApplicationController
  def new
    @memory = HappyMemory.new
  end

  def create
    @memory = HappyMemory.new(memory_params)
    @memory.user_id = current_user.id
    if @memory.save
      @memory.reminders.create(scheduled_at: Reminder::REMIND_PERIOD.months.since, reminded: false)
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

def destroy
  @happy_memory = HappyMemory.find(params[:id])
  @happy_memory.destroy
  redirect_to happy_memories_path, notice: "投稿が削除されました"
end

  private

  def memory_params
    params.require(:happy_memory).permit(:title, :content)
  end
end
