class User < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	def should_generate_new_friendly_id?
		new_record? || slug.nil? || slug.blank?
	end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :posts
         has_many :comments 
         has_one :profile, dependent: :destroy
has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type:  /\Aimage\/.*\Z/        

end
