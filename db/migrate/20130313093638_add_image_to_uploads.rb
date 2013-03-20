class AddImageToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :image, :string
       t.string :name
      t.text :content
  end
end
