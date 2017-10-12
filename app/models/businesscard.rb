class Businesscard < ApplicationRecord
  belongs_to :user, optional: true
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  def info
     "name: #{name} | email: #{email} | phone: #{phone} | title: #{title}"
  end
end
