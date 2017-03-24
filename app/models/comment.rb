class Comment < ApplicationRecord
	validates_presence_of :commenter, :body
	belongs_to :info
end
