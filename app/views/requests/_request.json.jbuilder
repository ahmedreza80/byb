json.extract! request, :id, :name, :phone, :address, :bname, :author, :info, :created_at, :updated_at
json.url request_url(request, format: :json)
