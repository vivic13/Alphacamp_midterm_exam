class Info < ApplicationRecord
	validates_presence_of :title, :content
	belongs_to :category
end
