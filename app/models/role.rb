class Role <  ActiveRecord::Base
  has_many :users
  has_many :permissions
  validates :name, presence: true, length: { maximum: 32}
end
