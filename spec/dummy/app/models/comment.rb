class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  has_one :author, :through => :post
  has_many :user_categories, :through => :user, :source => :categories_of_interest, :uniq => true
end

