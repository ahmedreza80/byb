json.extract! gbook, :id, :title, :description, :sdescription, :image, :previewo, :previewt, :previewth, :price, :offerprice, :coupon, :author, :publication, :created_at, :updated_at
json.url gbook_url(gbook, format: :json)
