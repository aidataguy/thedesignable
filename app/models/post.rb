class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

	def should_generate_new_friendly_id?
		new_record?
	end
	validates_presence_of :title, :description, :body, :tag_list, message: "can't be blank"
	acts_as_votable
	acts_as_taggable
	belongs_to :user
	has_many :comments, dependent: :destroy
end
