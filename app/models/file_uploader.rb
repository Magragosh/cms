class FileUploader < ActiveRecord::Base
	attr_accessible :name, :file, :remote_file_url
  	mount_uploader :file
end
