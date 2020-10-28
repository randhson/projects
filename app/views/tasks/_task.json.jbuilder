json.extract! task, :id, :title, :dt_inicio, :dt_final, :finish, :project, :created_at, :updated_at
json.url task_url(task, format: :json)
