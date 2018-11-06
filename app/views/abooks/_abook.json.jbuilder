json.extract! abook, :id, :title, :description, :sdescription, :image, :previewo, :previewt, :previewth, :price, :offerprice, :coupon, :author, :publication, :created_at, :updated_at
json.url abook_url(abook, format: :json)
