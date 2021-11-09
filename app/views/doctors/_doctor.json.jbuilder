# frozen_string_literal: true

json.extract! doctor, :id, :fullname, :category_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
