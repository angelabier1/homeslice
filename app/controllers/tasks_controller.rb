class TasksController < InheritedResources::Base

  private

    def task_params
      params.require(:task).permit(:title, :long_description, :short_description, :task_date, :task_time, :user_id, :status)
    end
end

