class AddImageToFiles < ActiveRecord::Migration
  def change
  	create_table :files do |t|
      t.string :image
  end
    add_column :files, :string

  end
end
