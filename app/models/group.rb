class Group < ActiveRecord::Base
  has_many :memberships
  has_many :posts
  has_many :users, :through => :memberships

  belongs_to :network

  validates :name , uniqueness: true
  validates :name , :presence => true

end
