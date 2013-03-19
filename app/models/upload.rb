class Upload < ActiveRecord::Base
	attr_accessible :gallery_id, :name, :image, :remote_image_url, :content
 	belongs_to :gallery
  	mount_uploader :image, ImageUploader

  	def image?
  		['png','jpg','gif'].include? image.file.extension
  	end

  	def script?
  		['css','html','js'].include? image.file.extension
  	end
end
