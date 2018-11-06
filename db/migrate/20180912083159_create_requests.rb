class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :bname
      t.string :author
      t.string :info

      t.timestamps
    end
  end
end
