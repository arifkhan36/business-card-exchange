class Businesscard < ApplicationRecord
  belongs_to :user, optional: true
  def info
     "name: #{name} | email: #{email} | phone: #{phone} | title: #{title}"
    end
end
