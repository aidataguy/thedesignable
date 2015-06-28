class Gallery < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	def should_generate_new_friendly_id?
		new_record?
	end
	
	validates_presence_of :name, :description, :url
	has_attached_file :image, styles: {large: "800x640#", medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type:  /\Aimage\/.*\Z/ 
end
