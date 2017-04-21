class User < ActiveRecord::Base
  has_many :roles
  validates :name, presence: true, length: { maximum: 32 }, format: { with: /[a-z]/, message: '必须是字母开头' }

  validates :authenticaton_token, presence: true, length: { maximum: 32}
end
