class Photo < ApplicationRecord

  belongs_to :center

  validates :center_id, presence: true
  validates :file, attachment_presence: true

  has_attached_file :file, styles: { medium: "356x280>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\z/
end
