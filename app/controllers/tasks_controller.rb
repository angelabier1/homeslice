class TasksController < InheritedResources::Base

  def index
    @tasks = Task.all
  end
  private

    def task_params
      params.require(:task).permit(:title, :long_description, :short_description, :task_date, :task_time, :user_id, :status)
    end
end

