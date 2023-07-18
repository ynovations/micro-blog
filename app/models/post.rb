class Post < ApplicationRecord
    validates :post_message, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }
    validates :user_id, presence: true

    belongs_to :user
    has_many :comments
end
