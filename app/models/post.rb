class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

	def should_generate_new_friendly_id?
		new_record?
	end
	validates_presence_of :title, :description, :body, :preview,:tag_list, message: "can't be blank"
	acts_as_votable
	acts_as_taggable
	belongs_to :user
	has_attached_file :preview, styles: {medium: "400x350>", thumb: "150x150#" }, default_url: "/images/:style/previewmissing.png"
  validates_attachment_content_type :preview, content_type:  /\Aimage\/.*\Z/        
end
