class AddImageToFiles < ActiveRecord::Migration
  def change
  	add_column :files, :image, :string
  end
    

  end
end
