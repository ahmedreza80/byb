json.extract! sbook, :id, :title, :description, :sdescription, :image, :previewo, :previewt, :previewth, :price, :offerprice, :coupon, :author, :publication, :created_at, :updated_at
json.url sbook_url(sbook, format: :json)
