json.extract! recipe, :id, :name, :international, :description, :dietary, :course_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
