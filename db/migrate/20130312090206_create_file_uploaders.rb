class CreateFileUploaders < ActiveRecord::Migration
  def change
    create_table :file_uploaders do |t|

      t.timestamps
    end
  end
end
