class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 255 }
  validates :url, presence: true, url: true, length: { minimum: 3, maximum: 255 }
  validates_presence_of :user_id
  belongs_to :user
  has_many :comments
end
