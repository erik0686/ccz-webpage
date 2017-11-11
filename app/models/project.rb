class Project < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.svg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/



  def change_status
  	self.status = "Accepted"
  	save
	end

end
