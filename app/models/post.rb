class Post < ActiveRecord::Base
	validates_presence_of :title, :description, :body, :tag_list, message: "can't be blank"
	acts_as_votable
	acts_as_taggable
	belongs_to :user
	has_many :comments, dependent: :destroy
end
