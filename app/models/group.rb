class Group < ActiveRecord::Base
  validates :title, presence: true
   has_many :posts, dependent: :destroy
   has_many :group_users
 has_many :members, through: :group_users, source: :user
end
