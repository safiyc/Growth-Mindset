class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :progresses

  validates :name, :desc, :presence => true

  has_attached_file :image, styles: { project_index: "250x350>", project_show: "250x350>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
