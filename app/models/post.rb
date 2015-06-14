class Post < ActiveRecord::Base
	validates_presence_of :title, :description, :body, message: "can't be blank"
	acts_as_votable
	belongs_to :user
	has_many :comments, dependent: :destroy
end
