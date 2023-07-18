class Comment < ApplicationRecord
    validates :comment_message, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }
    validates :user_id, presence: true
    validates :post_id, presence: true


    belongs_to :user
    belongs_to :post
end
