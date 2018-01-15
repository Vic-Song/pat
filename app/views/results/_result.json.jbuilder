json.extract! result, :id, :content, :question_id, :paper_id, :user_id, :created_at, :updated_at
json.url result_url(result, format: :json)
