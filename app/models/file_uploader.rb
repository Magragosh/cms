class FileUploader < ActiveRecord::Base
	attr_accessible :name, :image
  	mount_uploader :image
end
