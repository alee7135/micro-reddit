class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3 }
  validates :url, presence: true, url: true
  belongs_to :user
end
