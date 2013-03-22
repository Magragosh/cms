class Page < ActiveRecord::Base
	attr_accessible :name, :content, :slug

  	validates_presence_of :name, :content
end
