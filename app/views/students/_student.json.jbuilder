json.extract! student, :id, :name, :rollnumber, :subject, :class, :created_at, :updated_at
json.url student_url(student, format: :json)
