class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :category
      t.string :description
      t.text :sdescription
      t.string :image
      t.string :previewo
      t.string :previewt
      t.string :previewth
      t.string :price
      t.string :offerprice
      t.string :saving
      t.string :off
      t.string :coupon
      t.string :author
      t.string :publication

      t.timestamps
    end
  end
end
