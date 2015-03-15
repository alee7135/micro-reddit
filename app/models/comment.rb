class Comment < ActiveRecord::Base
  validates :content, presence: true, length: { maximum: 500 }
  validates_presence_of :user_id, :post_id

  belongs_to :user
  belongs_to :post
end
