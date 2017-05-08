class Pet < ApplicationRecord
	has_attached_file :image, styles: { medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	belongs_to :user 
	validates :user_id, presence: true 
end
